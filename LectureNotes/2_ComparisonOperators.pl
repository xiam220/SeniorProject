# Numbers
if (6 >= 3) {
    print "I am happy! :)\n";
} else {
    print "I am not happy >:(\n";
}

my $a = 6;
my $b = 3;
if ($a != $b) {
    print "I am happy! \n";
} else {
    print "I am not happy!\n";
}

# Strings: eq, ne
my $str1 = "apple";
my $str2 = "apple";
if ($str1 eq $str2) {
    print "Both are apples!\n";
} else {
    print "They are different!\n";
}

# Boolean Operators
my $apple1 = "apple";
my $apple2 = "apple";
if ($apple1 eq $apple2 && $apple1 eq "applie") {
    print "Both are apples!!!\n";
} else {
    print "Both are not apples >:(\n";
}