# Loops
for (my $i = 1; $i <=3;) {
    print "$i \n";
    $i++;
}

for(my $i = 0; $i <3; $i++) {
    print "apple! \n";
    print "eaten \n";
}

# Declare and Initialize an Array
my @array = ("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday");
print "$array[0] $array[1] $array[6]\n";

# Adding Element at the Tail
push(@array, "AnotherDay");
print("Extended Week: @array\n");
# Deleting Element at the Tail
pop(@array);
print("Back to Normal Week: @array\n");
# Removing First Element
shift(@array);
print("No one likes Mondays: @array\n");
# Adding Element at Head
unshift(@array, "Monday");
print("Can't avoid Mondays: @array\n");

# Array Size
my $length = @array;
print "$length\n";

# Access Array in For Loop
for( my $i = 0; $i < $length; $i++) {
    if($array[$i] eq "Friday") {
        print "Yay it's Friday! I found it at index $i\n";
    }
}