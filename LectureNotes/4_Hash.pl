# Hashes contain pairs of data (keys => values)
# Initializing a Hash
my %persons1 = (
    "Jim" => 23,
    "Tom" => 25,
    "Lucy" => 17
);

my %persons2;
$persons2{"Jim"} = 23;
$persons2{"Tom"} = 25;
$persons2{"Lucy"} = 17;

# Access a hash
print $persons1{"Jim"};
print "\n";

# Hash checking for existence
if( exists $persons2{"Jim"} ) {
    print "I know the age of Jim.\n It is ".$persons2{"Jim"}." \n";
} else {
    print "I don't know the age of Jim.\n";
}

# Access each of the elements (keys)
my @keys = keys(%persons2);
foreach my $item (@keys) {
    print "$item\n";
}

foreach my $key (keys %persons2) {
    print ($key." ".$persons{$key}."\n");
}

# Access each of the elements (values)
my @values = values(%persons1);
foreach my $item (@values) {
    print "$item\n";
}

# Delete 
    ## One Element
    delete($persons1{"Jim"});

    ## Everything
    %persons1 = ();

# Sort based on keys
my @keys = keys(%persons2);
foreach my $key (keys %persons2) {
    print($key." ".$persons{$key}."\n");
}
print "\n";
foreach my $key ( sort { $a cmp $b } keys %persons2) {
    print "$key $persons2{$key}\n";
}

# Sort based on values
foreach my $key( sort{ $persons2{$a} <=> $persons2{$b} } keys %persons2 ) {
    print "$key"." ".$persons{$key}."\n";
}