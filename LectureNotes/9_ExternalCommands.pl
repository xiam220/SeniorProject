#  Directory Operations
    opendir(DIR, "./");
    my @files = readdir(DIR);
    foreach my $file(@files) {
        print $file."\n";
    }
    closedir(DIR);

    system("perl 9_ExternalCommands.pl > files.txt");