#!/usr/bin/perl
use strict;
use warnings;

# Ultra-simple DEX scanner
my $dex_path = $ARGV[0] or die "Usage: $0 <dex file> [search_string]";
my $search = $ARGV[1] // "stopScan";

open(my $fh, "<:raw", $dex_path) or die;
my $size = -s $dex_path;
read($fh, my $data, $size);
close $fh;

print "=== $dex_path ($size bytes) ===\n";

# 1. Check if the search string exists in the raw data
my $str_count = 0;
my $pos = 0;
while (($pos = index($data, "$search\x00", $pos)) >= 0) {
    printf "  Found \"%s\" at raw offset 0x%x (%d)\n", $search, $pos, $pos;
    $str_count++;
    $pos++;
}
printf "String \"%s\" appears %d time(s)\n\n", $search, $str_count;

# 2. Parse DEX header to find the string_ids table
my @h = unpack("V20", substr($data, 8, 80));
my ($string_ids_size, $string_ids_off,
    $method_ids_size, $method_ids_off,
    $class_defs_size, $class_defs_off) = ($h[0], $h[1], $h[10], $h[11], $h[14], $h[15]);

printf "DEX header: string_ids=%d @0x%x, method_ids=%d @0x%x, class_defs=%d @0x%x\n\n",
    $string_ids_size, $string_ids_off, $method_ids_size, $method_ids_off,
    $class_defs_size, $class_defs_off;

# 3. Find the method_id entry for the search string
# First need to map string_idx -> name
my $search_name_idx = -1;
for (my $i = 0; $i < $string_ids_size && $i < 150000; $i++) {
    my $off = unpack("V", substr($data, $string_ids_off + $i*4, 4));
    next if $off <= 0 || $off > $size;
    my $p = $off;
    while (1) { my $b = ord(substr($data, $p++, 1)); last unless $b & 0x80; }
    my $end = index($data, "\x00", $p);
    next if $end < $p;
    my $s = substr($data, $p, $end - $p);
    if ($s eq $search) { $search_name_idx = $i; last; }
    if ($s eq "onReceive" || $s eq "onDeviceConnected" || $s eq "mConnectStateReceiver" || $s eq "AbstractBluetoothController") {
        printf "  Key string: \"%s\" at string_idx=%d (raw offset 0x%x)\n", $s, $i, $off;
    }
}

if ($search_name_idx < 0) {
    print "String '$search' not found in string table.\n";
    exit;
}

printf "\n\"%s\" is string_idx=%d\n", $search, $search_name_idx;

# 4. Find all method_ids that use this name
my @methods;
for (my $i = 0; $i < $method_ids_size; $i++) {
    my $off = $method_ids_off + $i * 8;
    my ($class_idx, $proto_idx, $name_idx) = unpack("v v V", substr($data, $off, 8));
    if ($name_idx == $search_name_idx) {
        push @methods, { idx => $i, class_idx => $class_idx, proto_idx => $proto_idx };
        printf "  method_id[%d]: class_idx=%d proto_idx=%d\n", $i, $class_idx, $proto_idx;
    }
}

# 5. Search for invoke instructions referencing these method indices
if (@methods) {
    printf "\n--- Searching for invoke calls to '%s' ---\n", $search;
    my %tm = map { $_->{idx} => 1 } @methods;
    my $found = 0;
    for (my $pc = 0; $pc < $size - 6; $pc++) {
        my $op = ord(substr($data, $pc, 1));
        next unless ($op >= 0x6e && $op <= 0x72) || ($op >= 0x74 && $op <= 0x78);
        my $mref = unpack("v", substr($data, $pc+2, 2));
        if ($tm{$mref}) {
            printf "  CALL at raw offset 0x%x: opcode=0x%x method_ref=%d bytes=%s\n",
                $pc, $op, $mref, unpack("H*", substr($data, $pc, 6));
            $found++;
        }
    }
    if ($found == 0) {
        print "  NO calls to '$search' found in bytecode.\n";
        print "  => The method exists but is NEVER called (dead code).\n";
    }
} else {
    print "No method_ids found for '$search'.\n";
    print "=> '$search' does not exist as a method in this DEX.\n";
}
