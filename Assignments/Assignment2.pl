use List::Util qw(min max);
# 1. Define an array in PERL so that it contains 1, 3, 5, 7, 9, and 11
#    Define another array that contains 10, 8, 6, 4, 2, and 0. You
#    should not directly assign the values, but should use a loop to
#    assign the values, i.e. do NOT use $a = (1, 3, 5, 7, 9). Create
#    the 3rd array and use a loop to assign its value. The 3rd array's
#    value should be the product of the first two arrays. For example,
#    the first value in the 3rd array should be 1*10=10. The 2nd value
#    should be 3*8=24. Print the largest value in the 3rd array. Print
#    the sum of all values in the 3rd array.

my @odds_array = ();
for (my $odds = 1; $odds <= 11; $odds += 2) {
    push(@odds_array, $odds);
}

my $backwardsEven_array = ();
for (my $evens = 10; $evens >= 0; $evens -= 2) {
    push(@backwardsEven_array, $evens);
}

my @multiplied_array = ();
my $sum = 0;
my $array_length = @odds_array;
for (my $index = 0; $index < $array_length; $index++) {
    push(@multiplied_array, $odds_array[$index]*$backwardsEven_array[$index]);
    $sum += $odds_array[$index]*$backwardsEven_array[$index];
}

my $max_value = max(@multiplied_array);
print "The sum is $sum \nThe max value is $max_value \n";

# 2. Define an array in PERL so that the 1st element of the array stores
#    1, 2nd element stores 2, 3rd element stores 3,..., the 100th element
#    stores 100. Print the sum of all the numbers by accessing the numbers
#    from the array.
my @hundred_array = ();
my $hundred_sum = 0;
for (my $num = 1; $num <= 100; $num++) {
    push(@hundred_array, $num);
    $hundred_sum += $num;
}

print "The cumulative sum is $hundred_sum\n";
# 3. Define a string in PERL that contains the following first name, last
#    name, and age: "Zheng Wang 28; Mary Young 34; Bob Clinton 38; Cali
#    "Liu 31; Winston Churchill 2;"

my $people_info = "Zheng Wang 28; Mary Young 34; Bob Clinton 38; Cali Liu 31; Winston Churchill 2;";

# 3.1 Write a PERL script to split the entries into an array so that each
#     in the array contains the first name, last name, and age of ONE person

my @indv_info = split(";", $people_info);
my $length = @indv_info;
# for (my $i = 0; $i < $length; $i++){
#     print "$indv_info[$i]";
#     print "\n";
# }
# 3.2 Find and print the age of the person who is the oldest (Hint: use one
#     split for each entry in the array)
my $max_age = 0;
for (my $person = 0; $person < $length; $person++) {
    my @person_info = split(/\s+/, $indv_info[$person]);
    my $info_length = @person_info;
    if($person_info[$info_length-1] > $max_age) {
        $max_age = $person_info[$info_length-1];
    }
}

print "$max_age \n";

# 4. Define a string that contains "A private research university with more
#    than 17,000 students from around the world, the University of Miami is
#    a vibrant and diverse academic community focused on teaching and learning,
#    the discovery of new knowledge, and service to the South Florida region and
#    beyond. The University comprises 11 schools and colleges serving undergraduate
#    and graduate students in more than 180 majors and programs. UM ranks No. 46
#    on U.S. News & World Report's 2018 Best Colleges list and ranked No. 44 in
#    the 2018 Wall Street Journal/Times Higher Education College Rankings.
#    in 1925 during the region's famous real estate boom, UM is a major research
#    university engaged in $324 million in research and sponsored program expenditures
#    annually. While the majority of this work is house at the Miller Schooler of
#    Medicine, investigators conduct hundreds of studies in other areas, including
#    marine science, engineering, education, and psychology."

my $UM_description = "A private research university with more
   than 17,000 students from around the world, the University of Miami is
   a vibrant and diverse academic community focused on teaching and learning,
   the discovery of new knowledge, and service to the South Florida region and
   beyond. The University comprises 11 schools and colleges serving undergraduate
   and graduate students in more than 180 majors and programs. UM ranks No. 46
   on U.S. News & World Report's 2018 Best Colleges list and ranked No. 44 in
   the 2018 Wall Street Journal/Times Higher Education College Rankings.
   in 1925 during the region's famous real estate boom, UM is a major research
   university engaged in \$324 million in research and sponsored program expenditures
   annually. While the majority of this work is house at the Miller Schooler of
   Medicine, investigators conduct hundreds of studies in other areas, including
   marine science, engineering, education, and psychology.";

# Notice that "psychology.", "No.", and "U.S." are considered one word (i.e. space
# separate each word)
# Print the frequency of occurence for the word "University" in the string (case
# insensitive).
my @words = split(/\s+/, $UM_description);
my $num_words = @words;
my $university_count = 0;
for(my $word = 0; $word < $num_words; $word++){
    if( "university" eq lc($words[$word]) ) {
        $university_count++;
    }
}

print("University (case insensitive) appears $university_count times\n");