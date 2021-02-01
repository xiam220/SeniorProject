use strict;
use warnings;

# split()
my $string = 'Becky Alcorn, 25, female, Melbourne';
my @array = split(',', $string);
my $length = @array;

for (my $i = 0; $i < $length; $i++) {
    print "$array[$i]";
}
print "\n";

# split() Function
my $str = "I am    hero 69!";
# \s : whitespace characters
#  \s+ : one or more whitespace character(s)
my @words = split(/\s+/, $str);
for (my $j = 0; $j < $length; $j++) {
    print "$words[$j]\n";
}

# substr() Function
my $catch_phrase = "I am a hero";
my $substr = substr($catch_phrase, -6, 2);
print "<$substr>\n";

# index()
my $declaration = "I am a hero, I love you";
my $char = "I";
my $index = index($declaration, $char);
print "$index\n";