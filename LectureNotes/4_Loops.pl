use strict;

# foreach
my @items;
for(my $i = 0; $i <= 3; $i++) {
    $items[$i] = $i + 5;
}

foreach my $item (@items) {
    print "$item\n";
}

foreach (@items) {
    print "$_";
}
print"\n";

# sort
my @array_increasing = (1, 4, 2, 7, 9);
# my @sorted_decreasing = sort { $a <=> $b } @array;
my @sorted_increasing = sort numSort @array_increasing;

sub numSort {
    if( $a < $b ) {
        return -1;
    } elsif ( $a == $b ) {
        return 0;
    } elsif( $a > $b ) {
        return 1;
    }
}

foreach my $num (@sorted_increasing) {
    print "$num\n";
}
print "\n";

my @array_decreasing = (4, 7, 2, 1, 9);
my @sorted_decreasing = sort { $b <=> $a } @array_decreasing;

foreach my $item(@sorted_decreasing) {
    print $item. "\n";
}
print "\n";

# Sort String
my @array_ASCII = ("apple", "earth", "professor", "Java", "Apple");
my @sorted_ASCII = sort { $a cmp $b } @array_ASCII;

foreach my $item (@sorted_ASCII) {
    print $item. "\n";
}
print "\n";

my @array_lc = ("apple", "earth", "professor", "Java", "Apple");
my @sorted_lc = sort {lc($a) cmp lc($b) } @array_lc;

foreach my $item (@sorted_lc) {
    print $item. "\n";
}
print "\n";