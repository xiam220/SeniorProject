# File Handles
    # filehandle created associated with file ./names.txt
    open(FILEH, "./names.txt");
    close(FILEH);

# Reading Lines
    open(IN, "<names.txt");
    while(<IN>) {
        print $_;
    } 
    close(IN);

    print "\n";
    open(IN, "<names.txt");
    # < > : Reading operator
    while(<IN>) {
        my $line = $_;
        print $line;
    }
    close(IN);

print "\n";
# Split
    open(IN, "<names.txt");
    while(<IN>) {
        my $line = $_;
        my @items = split(/ /, $line);
        foreach my $item(@items) {
            print $item."\n";
        }
    }
    close(IN);

print "\n";
# Reading the Entire File
    open(IN, "<names.txt");
    my @lines = <IN>;
    close(IN);
    foreach my $line (@lines) {
        print $line;
    }

print "\n";
# How Perl Records a Line
    # Record Separator
    $/ = "\n&\n";
    open(IN, "<names2.txt");
    while(<IN>) {
        my $line = $_;
        print $line;
        print "ENDOFLINE\n";
    }
    close(IN);

print "\n";
# File doesn't exist
    $/ = "";
    open(IN, "<randomFile.txt") or die "no file randomFile.txt";
    while(<IN>) {
        my $line = $_;
        print $line;
        print "ENDOFLINE\n";
    }
    close(IN);