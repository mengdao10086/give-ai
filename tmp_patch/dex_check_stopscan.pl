#!/usr/bin/perl
use strict;
use warnings;

# Simple script to check if a DEX file has a specific method call pattern
# for AbstractBluetoothController$mConnectStateReceiver$1.onReceive

my $dex_path = $ARGV[0] // "D:/下载/Claude Code/飞智散热器app修复/反编译及分析结果/apk_extracted/classes.dex";
open(my $fh, "<:raw", $dex_path) or die "Cannot open: $!";
my $size = -s $dex_path;
read($fh, my $data, $size);
close $fh;

print "File size: $size bytes\n";

# Check magic
my $magic = substr($data, 0, 8);
printf "Magic: %s\n", unpack("H*", $magic);

# Parse header (all V = 32-bit little-endian)
my @h = unpack("V22", substr($data, 8, 88));
my ($checksum, $signature, $file_size, $header_size, $endian_tag,
    $link_size, $link_off, $map_off, $string_ids_size, $string_ids_off,
    $type_ids_size, $type_ids_off, $proto_ids_size, $proto_ids_off,
    $field_ids_size, $field_ids_off, $method_ids_size, $method_ids_off,
    $class_defs_size, $class_defs_off, $data_size, $data_off) = @h;

printf "DEX v%s: %d strings, %d types, %d protos, %d fields, %d methods, %d classes\n",
    substr($magic, 4, 3),
    $string_ids_size, $type_ids_size, $proto_ids_size,
    $field_ids_size, $method_ids_size, $class_defs_size;

# Read string table
sub read_mutf8 {
    my ($off) = @_;
    return "" unless $off > 0 && $off < length($data);
    my $pos = $off;
    # Skip ULEB128 length
    while (1) {
        my $b = ord(substr($data, $pos++, 1));
        last unless $b & 0x80;
    }
    my $end = index(substr($data, $pos), "\x00");
    return $end >= 0 ? substr($data, $pos, $end) : "";
}

my @strings;
for (my $i = 0; $i < $string_ids_size; $i++) {
    my $off = unpack("V", substr($data, $string_ids_off + $i*4, 4));
    $strings[$i] = read_mutf8($off);
}

# Build type table
my @types;
for (my $i = 0; $i < $type_ids_size && $i < 20000; $i++) {
    my $idx = unpack("V", substr($data, $type_ids_off + $i*4, 4));
    $types[$i] = $idx < @strings ? $strings[$idx] : "???";
}

# Build method name table
my @method_names;
for (my $i = 0; $i < $method_ids_size && $i < 50000; $i++) {
    my $off = $method_ids_off + $i*8;
    my ($class_idx, $proto_idx, $name_idx) = unpack("V V V", substr($data, $off, 8));
    $method_names[$i] = $name_idx < @strings ? $strings[$name_idx] : "???";
}

# Find stopScan method index
my @stop_indices;
for (my $i = 0; $i < @method_names; $i++) {
    $method_names[$i] eq 'stopScan' and push @stop_indices, $i;
}
printf "stopScan method indices: %s\n", join(", ", @stop_indices);
print "(empty = not found in this DEX)\n";

# Find the target class
my $target = "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController\$mConnectStateReceiver\$1;";
for (my $i = 0; $i < $class_defs_size && $i < 5000; $i++) {
    my $off = $class_defs_off + $i*32;
    my ($class_idx) = unpack("V", substr($data, $off, 4));
    next unless $class_idx < @types && $types[$class_idx] eq $target;

    my ($access, $super_idx, $if_off, $src_idx, $ann_off, $data_off, $static_off) =
        unpack("V V V V V V V", substr($data, $off+4, 28));

    printf "\n=== FOUND %s ===\n", $target;
    printf "class_data_off=0x%x (%d)\n", $data_off, $data_off;

    # Parse class_data (ULEB128)
    my $pos = $data_off;
    my $val;
    for my $field_cnt (0..3) {
        $val = 0; my $shift = 0;
        while (1) {
            my $b = ord(substr($data, $pos++, 1));
            $val |= ($b & 0x7f) << $shift;
            last unless $b & 0x80;
            $shift += 7;
        }
        printf "  %s: %d\n", (qw(static_fields instance_fields direct_methods virtual_methods))[$field_cnt], $val;
    }

    my $method_idx = 0;
    for my $m (0..$val-1) { last; } # skip direct (constructor)

    $method_idx = 0;
    for my $m (0..$val-1) {
        $method_idx += read_uleb128(\$pos);
        my $access = read_uleb128(\$pos);
        my $code_off = read_uleb128(\$pos);

        my $mname = $method_idx < @method_names ? $method_names[$method_idx] : "?";
        printf "  virt method[%d]: idx=%d name='%s' code_off=0x%x\n", $m, $method_idx, $mname, $code_off;

        if ($mname eq 'onReceive' && $code_off > 0) {
            analyze_code($data, $code_off, \@stop_indices);
        }
    }
    exit 0;
}

print "\nTarget class not found. Listing classes...\n";
for (my $i = 0; $i < $class_defs_size && $i < 20; $i++) {
    my $off = $class_defs_off + $i*32;
    my ($class_idx) = unpack("V", substr($data, $off, 4));
    printf "  class[%d]: %s\n", $i, $class_idx < @types ? $types[$class_idx] : "???";
}
print "  ... (only showing first 20)\n";

sub read_uleb128 {
    my ($ppos) = @_;
    my $val = 0; my $shift = 0;
    while (1) {
        my $b = ord(substr($data, ${$ppos}++, 1));
        $val |= ($b & 0x7f) << $shift;
        last unless $b & 0x80;
        $shift += 7;
    }
    return $val;
}

sub analyze_code {
    my ($data, $code_off, $stop_indices) = @_;
    my %stop_set = map { $_ => 1 } @$stop_indices;

    my ($regs, $ins, $outs, $tries, $debug_off, $insns) =
        unpack("v v v V V V", substr($data, $code_off, 16));

    printf "    Code: regs=%d ins=%d outs=%d tries=%d insns=%d\n",
        $regs, $ins, $outs, $tries, $insns;

    my $code_start = $code_off + 16;
    my $code_end = $code_start + $insns * 2;

    my $pc = $code_start;
    my $found_stop = 0;

    while ($pc < $code_end) {
        my $op = ord(substr($data, $pc, 1)) & 0xff;

        if (($op == 0x6e || $op == 0x6f) && $pc + 6 <= $code_end) {
            my $mref = unpack("v", substr($data, $pc+2, 2));
            if ($stop_set{$mref}) {
                printf "    >>> stopScan() at 0x%x (method_ref=%d)\n", $pc, $mref;
                printf "    >>> Bytes: %s\n", unpack("H*", substr($data, $pc, 6));
                $found_stop++;
            }
        }
        if ($op == 0x74 && $pc + 6 <= $code_end) {
            my $mref = unpack("v", substr($data, $pc+2, 2));
            if ($stop_set{$mref}) {
                printf "    >>> stopScan() range at 0x%x (method_ref=%d)\n", $pc, $mref;
                printf "    >>> Bytes: %s\n", unpack("H*", substr($data, $pc, 6));
                $found_stop++;
            }
        }

        $pc += insn_size($op, substr($data, $pc));
    }

    printf "    stopScan calls found: %d\n", $found_stop;
    if ($found_stop) {
        print "  => The ACL_CONNECTED handler ALREADY has stopScan()\n";
        print "  => The primary bug may be elsewhere\n";
    } else {
        print "  => stopScan() is MISSING from ACL_CONNECTED handler\n";
        print "  => This is the root cause bug\n";
    }
}

sub insn_size {
    my ($op, $buf) = @_;
    return 2 if $op <= 0x0d;
    return 2 if $op >= 0x0e && $op <= 0x12;
    return 4 if $op == 0x13 || $op == 0x16;
    return 6 if $op == 0x14 || $op == 0x15 || $op == 0x17 || $op == 0x1a || $op == 0x1b;
    return 4 if $op >= 0x1c && $op <= 0x1f;
    return 4 if $op >= 0x20 && $op <= 0x25;
    return 4 if $op == 0x26; # fill-array-data (4 bytes + padding)
    return 2 if $op == 0x27 || $op == 0x28;
    return 4 if $op == 0x29;
    return 6 if $op == 0x2a || $op == 0x2b || $op == 0x2c;
    return 4 if $op >= 0x2d && $op <= 0x3d;
    return 4 if $op >= 0x3e && $op <= 0x43; # unused
    return 4 if $op >= 0x44 && $op <= 0x5b; # aget*/aput*
    return 4 if $op >= 0x5c && $op <= 0x6d; # iget*/iput*/sget*/sput*
    return 6 if $op >= 0x6e && $op <= 0x79; # invoke*
    return 4 if $op >= 0x22 && $op <= 0x23; # new-instance, new-array
    return 2 if $op == 0x21; # array-length
    return 2 if $op >= 0x7b && $op <= 0x8f; # unary
    return 4 if $op >= 0x90 && $op <= 0xcf; # binary
    return 4 if $op >= 0xd0 && $op <= 0xe2; # lit8/lit16
    return 2; # default
}
