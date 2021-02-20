# Pattern Finding -=~ operator
# Detect if some patterns exist in a String
#  Case sensitive
my $string = "Jerry Tommy Dale Nick";
if($string =~ /Dale/) {
    print $string;
    print "\nIt has Dale\n";
}

$string = "Jerry Tommy DaleNick";
if($string =~ /Dale/) {
    print $string;
    print "\nIt has Dale\n";
}

# Case insensitive
if($string =~ /dale/i) {
    print "It has dale or Dale\n";
}

if($string !~ /dale/) {
    print "String doesn't have dale\n";
}

if($string =~ / /) {
    print "It has whitespace\n";
}

# \s : whitespace including space, tab, newline, or return
$string = "Jerry TommyDaleNick";
if($string =~ /\s/) {
    print $string;
    print "\nIt has whitespace\n";
}

# \S indicates anything but white space
# \d indicates digits 0 to 9
# \w indicates 0-9 and A-Z and a-z

# ASCII
my $numLetter = "22312";
if($string =~ /[a-z]/) {
    print $numLetter;
    print "\nIt has letter(s)\n";
}

# Boundary between a \w character and a \W character
# \w, \W : 'word' character, non-'word' character
my $boundaryNum = "22312DDD";
if($string =~ /\b/) {
    print $boundaryNum;
    print "\nIt has boundary\n";
}

#  . : any character
my $anyChar = "22312DDD";
if($anyChar =~ /12.DD/) {
    print $anyChar;
    print "\nFound 12.DD\n";
}

# ? preceding character or group may be present 0 or 1 times
# /bea?t/ -> either 'beat' or 'bet';
# /bea+t/ -> either 'beat', 'beaat', 'beaaaaat', ...
# /bea*t/ -> either 'bet', 'beat', 'beaat', ...

# match 'xyz' 1-3 times
my $matchNumTimes = "xyzxyzxyz";
if($matchNumTimes =~ /(xyz){1,3}/) {
    print $matchNumTimes;
    print "\nFound (xyz){1,3}\n";
}

# (a|b) -> either a or b letter(s)
my $stringOr = "Apple";
$stringOr = "Applee";
if($stringOr =~ /Appl(e|ee)/) {
    print $stringOr;
    print "\nFound (e|ee)\n";
}

my $stringMatch = "this is the one";
if($stringMatch =~ /that|this|those/) {
    print $stringMatch;
    print "\nFound 'this'\n";
}


