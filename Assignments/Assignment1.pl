# 1. Given the following four global variables, find the max value between them
my $a = 10;
my $b = 8;
my $c = 8;
my $d = 11;

my $max = $a;

if ($b > $max){ $max = $b; }
if ($c > $max){ $max = $c; }
if ($d > $max){ $max = $d; }

print("The max value is $max\n");

# 2. Given two global variables, swap the two numbers
my $e = 11;
my $f = 22;
my $temp = $e;
$e = $f;
$f = $temp;

print "The variables storing $e and $f have been swapped!\n";

# 3. Use boolean operators to check if there are any two variables having the same 
# value. If so, print "Yes"; otherwise, print "No".
my $a = 10;
my $b = 8;
my $c = 8;

if ($a == $b || $a == $c || $b == $c){
    print ("At least two matching numbers!\n");
} else {
    print ("No matching numbers :(\n");
}

# 4. Using "eq"/"ne" and "&&" to find if the following strings are distinct to
#  each other. If so, print "Yes"; otherwise, print "No"
my $g = "aabba";
my $h = "aabbab";
my $i = "abbab";
if ($g ne $h && $g ne $i && $h ne $i){
    print "Yes, they are disctinct strings\n";
} else {
    print "No, there's a duplicate string\n";
}