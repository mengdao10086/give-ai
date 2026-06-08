#!/usr/bin/perl
use strict;
use warnings;
# Very simple DEX parser - just find method IDs and bytecode locations

my $dex_path = $ARGV[0] // "D:/下载/Claude Code/飞智散热器app修复/反编译及分析结果/apk_extracted/classes.dex";
open(my $fh, "<:raw", $dex_path) or die;
my $size = -s $dex_path;
read($fh, my $data, $size);
close $fh;

print "=== DEX Analysis: $dex_path ===\n";
print "Size: $size bytes\n\n";

# Parse header
my $magic = substr($data, 0, 8);
my @h = unpack("V20", substr($data, 8, 80));
my ($checksum, undef, undef, undef, $endian_tag, undef, undef,
    $string_ids_size, $string_ids_off,
    $type_ids_size, $type_ids_off,
    $proto_ids_size, $proto_ids_off,
    $field_ids_size, $field_ids_off,
    $method_ids_size, $method_ids_off,
    $class_defs_size, $class_defs_off,
    $data_size, $data_off) = @h;

printf "DEX v%s: %d methods\n", substr($magic, 4, 3), $method_ids_size;

# Build string name lookup for a few key strings
my %str_offsets;
my $search = 0;
while (1) {
    my $next = index($data, "\x00", $search);
    last if $next < 0 || $next > $size;
    my $s = "";
    my $p = $next - 1;
    # Back up to find the start of the string
    # Actually, DEX strings have a ULEB128 length prefix
    # Let me just search from the offset
    while ($p > 0 && ord(substr($data, $p, 1)) > 0x7f) { $p--; }
    $p++; # skip past the last byte of ULEB128
    # Actually this is complex. Let me use the string_ids table to find stopScan

    $search = $next + 1;
    last if $search >= $size;
}

# Build string table (first 10000 strings)
my @strings;
my $max_s = $string_ids_size > 100000 ? 100000 : $string_ids_size;
for (my $i = 0; $i < $max_s; $i++) {
    my $off = unpack("V", substr($data, $string_ids_off + $i*4, 4));
    next if $off <= 0 || $off >= $size;
    my $pos = $off;
    # Skip ULEB128 length
    while (1) {
        my $b = ord(substr($data, $pos++, 1));
        last unless $b & 0x80;
    }
    my $end = index($data, "\x00", $pos);
    $strings[$i] = $end > $pos ? substr($data, $pos, $end-$pos) : "";
}

# Find stopScan method_idx
my @stop_indices;
if ($method_ids_size < 100000) {
    for (my $i = 0; $i < $method_ids_size; $i++) {
        my $off = $method_ids_off + $i * 8;
        my ($class_idx, $proto_idx, $name_idx) = unpack("v v V", substr($data, $off, 8));
        next if $name_idx > $#strings;
        if ($strings[$name_idx] eq "stopScan") {
            push @stop_indices, $i;
            printf "  stopScan method_id[%d] = class_idx=%d proto_idx=%d name_idx=%d\n",
                $i, $class_idx, $proto_idx, $name_idx;
        }
    }
}

print "\n== Scanning for stopScan calls in bytecode ==\n";

my %stop_set = map { $_ => 1 } @stop_indices;
my @found_at;

# Search for invoke-virtual/range (0x74) and invoke-virtual (0x6e/0x6f)
# in the entire DEX file, then check if they reference stopScan method
for (my $pc = 0; $pc < $size - 6; $pc++) {
    my $op = ord(substr($data, $pc, 1));
    next unless ($op >= 0x6e && $op <= 0x6f) || $op == 0x74;

    my $mref = unpack("v", substr($data, $pc+2, 2));
    if ($stop_set{$mref}) {
        push @found_at, { offset => $pc, opcode => $op, mref => $mref };
    }
}

if (@found_at) {
    printf "\nFound %d stopScan() call(s) in bytecode:\n", scalar @found_at;
    for my $f (@found_at) {
        my $opname = $f->{opcode} == 0x74 ? "invoke-virtual/range" : "invoke-virtual";
        printf "  Offset 0x%x (%d): %s method_ref=%d\n",
            $f->{offset}, $f->{offset}, $opname, $f->{mref};
        printf "  Bytes: %s\n", unpack("H*", substr($data, $f->{offset}, 6));

        # Check surrounding code context (search for nearby method headers)
        # Find the nearest class_def that contains this offset
    }
} else {
    print "\nNO stopScan() calls found in bytecode!\n";
    print "=> The original DEX does NOT call stopScan() anywhere\n";
}
