#  s/a/b/ : substitue a with b (CASE SENSITIVE)
# By default, only the 
my $s = "Tom Jerry Windows Jack";
print $s;
$s =~ s/Windows/Jesse/;
print "\n$s\n";

$s = "Tom Jerry Windows Jack";
$s =~ s/Windows/Jesse /;
print $s."\n";

$s = "Tom Jerry Windows Jack";
print "$s";
$s =~ s/windows/Jesse/i;
print "\nCase insensitive replacement: $s\n\n";

# s/ / /g : global substitution
$s = "Tom Jerry Windows Jack Tom";
print $s;
$s =~ s/Tom/Jesse/g;
print "\nGlobal substitution: $s\n\n";

# s/^a/b/g: substitute at start of the string
$s = "Tom Jerry Windows Jack Tom";
print $s;
$s =~ s/^Tom/Jesse/g;
print "\nReplace at start: $s\n\n";

#  s/a$/b/g : substitue at end of string
$s = "Tom Jerry Windows Jack Tom";
print $s;
$s =~ s/Tom$/Jesse/g;
print "\nReplace at end: $s \n\n";

# s/^a/b/ : start at string, not line
$s = "Tom Jerry\nTom Jack Tom";
print $s;
$s =~ s/^Tom/Jesse/g;
print "\n$s\n\n";

# s/^a/b/gm : m treats it as multiple lines
$s = "Tom Jerry\nTom Jack Tom";
print $s;
$s =~ s/^Tom/Jesse/gm;
print "\nReplace on both lines: \n$s\n\n";

$s = "Tom Jerry * Tom Jack Tom";
print $s;
$s =~ s/\*/Windows/;
print "\n$s\n\n";

$s = "Tom Jerry \ Tom Jack Tom";
print $s;
$s =~ s/(Tom)/Tommy/;
print "\n$s\n\n";

$s = "Tom Jerry \ Tom Jack Tom";
print $s;
$s =~ s/[T-Z]/!/;
print "\n$s\n\n";