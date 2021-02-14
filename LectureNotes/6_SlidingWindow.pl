# Given a DNA sequence, find the appearance of a motif:
my $seq = "AGTCCCCCTTTGGAGAGTGTGTGTATGTATGTACATCAT";
my $motif = "TTGGA";

my $seqLength = length($seq);
my $motifLength = length($motif);
for( my $i = 0; $i < $seqLength; $i++) {
    my $temp = substr($seq, $i, $motifLength);
    if( $temp eq $motif ) {
        print "Found it at index position $i!\n";
    }
}

# Can you rank the names based on occurrence?
# Line 1: Tom Ray Sam Tony
# Line 2: Jerry Jim Dong
# Line 3: Gang Jennifer Mark
# Line 4: Tyler Patrick Jennifer Rebecca
my @nameArray;
push(@array, "Tom Ray Same Tony");
push(@array, "Jerry Jim Dong");
push(@array, "Gang Jennifer Mark");
push(@array, "Tyler Patrick Jennifer Rebecca");

my %nameHash;
foreach my $item (@array) {
    my @names = split(/\s+/, $item);
    foreach $name (@names) {
        $nameHash{$name}++;
    }
}

foreach my $key (sort { $nameHash{$b} <=> $nameHash{$a} } keys %nameHash) {
    print $key." $nameHash{$key}\n";
}