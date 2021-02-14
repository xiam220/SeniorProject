&printHello();
sub printHello() {
    print "Hello World!\n";
}

&test(5);
sub test() {
    print $_[0]."\n";
}

&test2(5, 10);
sub test2() {
    print $_[0];
    print "\n";
    print $_[1]."\n";
}

my $result = &luckyNumber();
print $result;
sub luckyNumber() {
    return 7;
}

$total = &sum(5, 10);
print "\n".$total."\n";
sub sum() {
    return $_[0] + $_[1];
}

my @array;
push(@array, 6);
push(@array, 11);
# \@ will return a reference (or pointer) 
my $sum = &arraySum(\@array);
print "\nSum is $sum\n";
sub arraySum() {
    print $_[0];
    my $ref = $_[0];
    my @temp = @{$ref};
    foreach my $index (@temp) {
        $sum = $sum + $index;
    }
    return $sum;
}