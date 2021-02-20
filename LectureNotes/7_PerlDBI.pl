my $string = "Tom Gary Stacey Henry Marc Dimitry";
my @names = split(/\s+/, $string);
foreach my $name (@names) {
    print $name."\n";
}

my $string2 = join("; ", @names);
print $string2."\n";

# Load module
use DBI;
# Connect
# -><call connect method>...(...:<DB type>:DB name>;
#   ..., <username>, <password>);
my $dbh = DBI->connect("DBI:mysql:database:db2;
    host=localhost", "joe", "guessme");

# Execute INSERT query
my $rows = $dbh->do("INSERT INTO USERS
    (id, username, country) VALUES (4, 'jay', 'CZ')");
print "$rows row(s) affected\n";

# Execute SELECT query
my $sth = $dbh->prepare("SELECT username, country FROM users");
$sth->execute();

# Iterate through resultset
# print values
while (my $ref = $sth->fetchrow_hashref()) {
    print "User: $ref->{'username'}\n";
    print "Country: $ref->{'country'}\n";
    print "---------\n";
}

# clean up
$dbh->disconnect();
