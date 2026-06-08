#!/usr/bin/perl
use strict;
use warnings;

my $dex_path = $ARGV[0] // "D:/下载/Claude Code/飞智散热器app修复/反编译及分析结果/apk_extracted/classes.dex";
my $target_class = $ARGV[1] // "Lcom/flydigi/sdk/bluetooth/AbstractBluetoothController\$mConnectStateReceiver\$1;";
my $target_method = $ARGV[2] // "onReceive";

print "Analyzing: $dex_path\n";
print "Target class: $target_class\n";
print "Target method: $target_method\n\n";

open(my $fh, "<:raw", $dex_path) or die "Cannot open $dex_path: $!";
my $size = -s $dex_path;
read($fh, my $data, $size);
close $fh;

# Parse DEX header
my ($magic, $checksum, $signature, $file_size, $header_size, $endian_tag,
    $link_size, $link_off, $map_off, $string_ids_size, $string_ids_off,
    $type_ids_size, $type_ids_off, $proto_ids_size, $proto_ids_off,
    $field_ids_size, $field_ids_off, $method_ids_size, $method_ids_off,
    $class_defs_size, $class_defs_off, $data_size, $data_off) =
    unpack("a8 V a20 V V V V V V V V V V V V V V V V V V V", $data);

printf "DEX: %s (version %s)\n", substr($magic, 0, 3), substr($magic, 4, 3);
printf "String IDs: %d @ 0x%x\n", $string_ids_size, $string_ids_off;
printf "Type IDs: %d @ 0x%x\n", $type_ids_size, $type_ids_off;
printf "Proto IDs: %d @ 0x%x\n", $proto_ids_size, $proto_ids_off;
printf "Field IDs: %d @ 0x%x\n", $field_ids_size, $field_ids_off;
printf "Method IDs: %d @ 0x%x\n", $method_ids_size, $method_ids_off;
printf "Class Defs: %d @ 0x%x\n", $class_defs_size, $class_defs_off;
printf "Data: %d bytes @ 0x%x\n", $data_size, $data_off;

# Read string table
sub read_string {
    my ($off) = @_;
    return "" unless $off > 0 && $off < length($data);
    my $pos = $off;
    my $len = 0; my $shift = 0;
    while (1) {
        my $byte = ord(substr($data, $pos++, 1));
        $len |= ($byte & 0x7f) << $shift;
        last unless $byte & 0x80;
        $shift += 7;
    }
    my $end = index(substr($data, $pos), "\x00");
    return $end >= 0 ? substr($data, $pos, $end) : "";
}

sub read_uleb128 {
    my ($pos_ref) = @_;
    my $result = 0; my $shift = 0;
    while (1) {
        my $byte = ord(substr($data, $$pos_ref++, 1));
        $result |= ($byte & 0x7f) << $shift;
        last unless $byte & 0x80;
        $shift += 7;
    }
    return $result;
}

# Build string table
my @strings;
for (my $i = 0; $i < $string_ids_size; $i++) {
    my $off = unpack("V", substr($data, $string_ids_off + $i*4, 4));
    $strings[$i] = read_string($off);
}

# Build type table
my @types;
for (my $i = 0; $i < $type_ids_size; $i++) {
    my $idx = unpack("V", substr($data, $type_ids_off + $i*4, 4));
    $types[$i] = $strings[$idx];
}

# Find stopScan method index
my $stopScan_method_idx = -1;
for (my $mi = 0; $mi < $method_ids_size; $mi++) {
    my $off = $method_ids_off + $mi*8;
    my ($class_idx, $proto_idx, $name_idx) = unpack("V V V", substr($data, $off, 8));
    $strings[$name_idx] eq 'stopScan' and $stopScan_method_idx = $mi;
}
print "\nstopScan method_idx: " . ($stopScan_method_idx >= 0 ? $stopScan_method_idx : "NOT FOUND") . "\n";

# Build method names lookup
my @method_names;
for (my $i = 0; $i < $method_ids_size; $i++) {
    my $off = $method_ids_off + $i*8;
    my ($class_idx, $proto_idx, $name_idx) = unpack("V V V", substr($data, $off, 8));
    $method_names[$i] = $strings[$name_idx];
}

# Find target class
my $found = 0;
for (my $i = 0; $i < $class_defs_size; $i++) {
    my $off = $class_defs_off + $i*32;
    my ($class_idx, $access_flags, $superclass_idx, $interfaces_off, $source_file_idx,
        $annotations_off, $class_data_off, $static_values_off) =
        unpack("V V V V V V V V", substr($data, $off, 32));

    my $class_name = $types[$class_idx];
    next unless $class_name eq $target_class;
    $found = 1;

    printf "\n=== Found %s ===\n", $class_name;
    printf "  class_def[%d]: class_idx=%d access_flags=0x%x\n", $i, $class_idx, $access_flags;
    printf "  class_data_off=0x%x\n", $class_data_off;

    # Parse class_data
    my $pos = $class_data_off;
    my $static_fields = read_uleb128(\$pos);
    my $instance_fields = read_uleb128(\$pos);
    my $direct_methods = read_uleb128(\$pos);
    my $virtual_methods = read_uleb128(\$pos);

    printf "  static_fields=%d instance_fields=%d direct_methods=%d virtual_methods=%d\n",
        $static_fields, $instance_fields, $direct_methods, $virtual_methods;

    # Read direct methods (constructor)
    my $method_idx_delta = 0;
    for (my $m = 0; $m < $direct_methods; $m++) {
        $method_idx_delta += read_uleb128(\$pos);
        my $access = read_uleb128(\$pos);
        my $code_off = read_uleb128(\$pos);
        printf "  Direct method[%d]: name='%s' (method_idx=%d) access=0x%x code_off=0x%x\n",
            $m, $method_names[$method_idx_delta], $method_idx_delta, $access, $code_off;
    }

    # Read virtual methods (onReceive)
    for (my $m = 0; $m < $virtual_methods; $m++) {
        $method_idx_delta += read_uleb128(\$pos);
        my $access = read_uleb128(\$pos);
        my $code_off = read_uleb128(\$pos);
        printf "  Virtual method[%d]: name='%s' (method_idx=%d) access=0x%x code_off=0x%x\n",
            $m, $method_names[$method_idx_delta], $method_idx_delta, $access, $code_off;

        # If this is the target method, dump the bytecode
        if ($method_names[$method_idx_delta] eq $target_method && $code_off > 0) {
            dump_code($data, $code_off, $method_names[$method_idx_delta], $stopScan_method_idx);
        }
    }
    last;
}

sub dump_code {
    my ($data, $code_off, $method_name, $stopScan_mi) = @_;

    printf "\n  === Code for %s @ 0x%x ===\n", $method_name, $code_off;

    my ($registers_size, $ins_size, $outs_size, $tries_size,
        $debug_info_off, $insns_size) =
        unpack("v v v V V V", substr($data, $code_off, 16));

    printf "    registers=%d ins=%d outs=%d tries=%d debug=0x%x insns=%d\n",
        $registers_size, $ins_size, $outs_size, $tries_size,
        $debug_info_off, $insns_size;

    my $code_start = $code_off + 16;
    my $code_end = $code_start + $insns_size * 2;

    printf "    Bytecode range: 0x%x - 0x%x (%d bytes)\n", $code_start, $code_end, $insns_size * 2;

    # Dump all instructions
    my $pc = $code_start;
    my $found_stop = 0;
    while ($pc < $code_end) {
        my $opcode = ord(substr($data, $pc, 1)) & 0xff;
        my $opcode2 = ord(substr($data, $pc+1, 1)) & 0xff;

        # Check for invoke-virtual (0x6e)
        if (($opcode == 0x6e || $opcode == 0x6f) && $pc + 6 <= $code_end) {
            my $method_ref = unpack("v", substr($data, $pc+2, 2));
            my $arg_word = unpack("v", substr($data, $pc+4, 2));
            my $reg_count = ($arg_word >> 12) & 0xf;
            my $first_reg = $arg_word & 0xfff;

            my $method_name = $method_ref < @method_names ? $method_names[$method_ref] : "?";
            my $hex = unpack("H*", substr($data, $pc, 6));
            printf "      0x%x: %s invoke-virtual {v%d..v%d}, %s [method_idx=%d %s]\n",
                $pc, $hex, $first_reg, $first_reg+$reg_count-1, $method_name, $method_ref,
                $method_ref == $stopScan_mi ? "*** stopScan ***" : "";

            if ($method_ref == $stopScan_mi) {
                $found_stop = 1;
            }
        }
        elsif ($opcode == 0x74 && $pc + 6 <= $code_end) { # invoke-virtual/range
            my $method_ref = unpack("v", substr($data, $pc+2, 2));
            my $reg_count = unpack("v", substr($data, $pc+4, 2));
            my $first_reg = ord(substr($data, $pc+6, 1));

            my $method_name = $method_ref < @method_names ? $method_names[$method_ref] : "?";
            my $hex = unpack("H*", substr($data, $pc, 6));
            printf "      0x%x: %s invoke-virtual/range {v%d..v%d}, %s [method_idx=%d %s]\n",
                $pc, $hex, $first_reg, $first_reg+$reg_count-1, $method_name, $method_ref,
                $method_ref == $stopScan_mi ? "*** stopScan ***" : "";

            if ($method_ref == $stopScan_mi) {
                $found_stop = 1;
            }
        }
        else {
            # Print remaining important opcodes
            my $hex = unpack("H*", substr($data, $pc, 4));
            printf "      0x%x: %s opcode=0x%x\n", $pc, $hex, $opcode;
        }

        # Advance to next instruction
        my $ins_size = dalvik_insn_size($opcode, $opcode2, substr($data, $pc));
        $pc += $ins_size;
    }

    printf "\n    stopScan() call found: %s\n", $found_stop ? "YES" : "NO";

    if ($found_stop) {
        print "  => The bug (missing stopScan) is NOT present in this DEX!\n";
    } else {
        print "  => The bug IS present: stopScan() is missing from onReceive\n";
    }
}

sub dalvik_insn_size {
    my ($opcode, $opcode2, $buf) = @_;

    return 2 if $opcode == 0x00 || $opcode >= 0x0e && $opcode <= 0x11;
    return 2 if $opcode == 0x01 || $opcode == 0x04 || $opcode == 0x07 || $opcode == 0x08 || $opcode == 0x09;
    # move-result*
    return 2 if $opcode == 0x0a || $opcode == 0x0b || $opcode == 0x0c || $opcode == 0x0d;
    # return-void/return/return-wide/return-object
    return 2 if $opcode >= 0x0e && $opcode <= 0x11;
    # const/4
    return 2 if $opcode == 0x12;
    # const/16, const-wide/16
    return 4 if $opcode == 0x13 || $opcode == 0x16;
    # const, const-wide/32, const-wide, const-string
    return 6 if $opcode == 0x14 || $opcode == 0x15 || $opcode == 0x17 || $opcode == 0x1a;
    # const-string/jumbo
    return 6 if $opcode == 0x1b;
    # const-class, const-class/jumbo
    return 4 if $opcode == 0x1c;
    # monitor-enter/exit
    return 2 if $opcode == 0x1d || $opcode == 0x1e;
    # check-cast, instance-of, new-instance, new-array
    return 4 if $opcode >= 0x1f && $opcode <= 0x23;
    # filled-new-array, filled-new-array/range
    return 6 if $opcode == 0x24 || $opcode == 0x25;
    # fill-array-data
    return 4 if $opcode == 0x26;
    # throw
    return 2 if $opcode == 0x27;
    # goto
    return 2 if $opcode == 0x28;
    # goto/16, goto/32
    return 4 if $opcode == 0x29;
    return 6 if $opcode == 0x2a;
    # packed-switch, sparse-switch
    return 4 if $opcode == 0x2b || $opcode == 0x2c;
    # cmp*
    return 4 if $opcode >= 0x2d && $opcode <= 0x31;
    # if-eq through if-le
    return 4 if $opcode >= 0x32 && $opcode <= 0x3d;
    # if-eqz through if-lez
    return 4 if $opcode >= 0x38 && $opcode <= 0x3d;
    # unused, don't match these exactly
    # aget*
    return 4 if $opcode >= 0x44 && $opcode <= 0x4f;
    # aput*
    return 4 if $opcode >= 0x50 && $opcode <= 0x5b;
    # iget*, iput*
    return 4 if $opcode >= 0x5c && $opcode <= 0x6b;
    # sget*, sput*
    return 4 if $opcode >= 0x60 && $opcode <= 0x6d;
    # invoke-*
    return 6 if $opcode >= 0x6e && $opcode <= 0x78;
    # unary operations (neg-int etc)
    return 2 if $opcode >= 0x7b && $opcode <= 0x8f;
    # binary operations
    return 4 if $opcode >= 0x90 && $opcode <= 0xaf || $opcode >= 0xb0 && $opcode <= 0xcf;
    # add-int/lit16 etc
    return 4 if $opcode >= 0xd0 && $opcode <= 0xd7;
    # add-int/lit8 etc
    return 4 if $opcode >= 0xd8 && $opcode <= 0xe2;

    # array-length
    return 2 if $opcode == 0x21;

    # Default
    return 2;
}

if (!$found) {
    print "\nTarget class not found in $dex_path\n";
}
