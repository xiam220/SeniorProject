# 1. Define a population has containing these keys and values
my %countryPopulation = (
    "China" => 1415,
    "India" => 1354,
    "USA" => 326,
    "Indonesia" => 266
);
# (a) Print all the country names followed by its population
foreach my $country (keys %countryPopulation) {
    print "$country $countryPopulation{$country}\n";
}
# (b) Print the averaged population calculated from the top three countries
print "Sorted keys by decreasing population\n";
my $numCountries = 0;
my $totalPopulation = 0;
my @populationArray = ();
foreach my $country ( sort{ $countryPopulation{$b} <=> $countryPopulation{$a} } keys %countryPopulation) {
    push(@populationArray, $country);
}
my $populationArrayLength = @populationArray;
for(my $i = 0; $i < $populationArrayLength-1; $i++) {
    $totalPopulation += $countryPopulation{ $populationArray[$i] };
    $numCountries++;
}
print "The average population of the top 3 countries is ".$totalPopulation/$numCountries."\n";
# (c) Print the largest population and the country name
print "The largest population is " .$populationArray[0]."\n";
# (d) Create an array and use a loop (NOT manually or directly assign values to each element)
#     to assign "country, population" to each of its element. For example, the first element
#     in the array should contain "China 1415." THe first element should have the largest
#     population, followed by the second, i.e. ranked by populations

# 2. Define a string that contains the quote
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
# Print the most frequenty occurred word in the string. Create a hash, in which each word in
# the string is the key and its time of occurrence as value. Print a list of unique words with 
# the word's number of occurrences. For example:
#  is 3
# science 2
# education 1
# The list should be ranked by the number of occurrences from high to low
my %wordHash;
my @wordsArray = split(/\s+/, $UM_description);
foreach $word (@wordsArray) {
    if (exists $wordHash{$word}) {
        $wordHash{$word} += 1;
    } else {
        $wordHash{$word} = 1;
    }
}
foreach my $word ( sort{ $wordHash{$b} <=> $wordHash{$a} } keys %wordHash) {
    print $word." ".$wordHash{$word}."\n";
}

# 3. Given a DNA sequence 
my $seq = "CATTAATGAAAATTCTCAGCAAAAGTCATATATATTCTCGCCAAGGCGACACACCAGCTA";
# (a) Check if "GC" exists in the sequence
if( index($seq, "GC") != -1){
    print "GC exists in the sequence\n";
}
# (b) Print how many times you can find a "GC" in the sequence
my $motif = "GC";
my $numSubstring = 0;
for ( my $i = 0; $i < length($seq)-1; $i++) {
    if ( $motif eq substr($seq, $i, 2) ) {
        $numSubstring++;
    }
}
print "The substring GC appears in seq ".$numSubstring." times.\n";
# 4. Given two protein secondary structure sequences with the same length
my $seq1 = "CCCCEEEEEEECCCCCCCHHHHHHHHHHHCCCCCEEEEECCEEEEEECCHHHHHHHHHHHHHHCCCCEEEEEEC";
my $seq2 = "HHHCCCEEECCCCCCCCHHHHHHHHHHCCCCCCCCCCCCCCCEEECCCCHHHHHHCCCEEEEECCCCEEEEECC";

# Print how many element/character pairs (at the same indexes) in the two sequences are the same
my $samePair = 0;
for ( my $i = 0; $i < length($seq1)-1 ; $i++) {
    if ( substr($seq1, $i, 2) eq substr($seq2, $i, 2) ) {
        $samePair++;
    }
}
print "The same character pairs occur ".$samePair." times\n";