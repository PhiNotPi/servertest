use strict;
use warnings;
use DBI;
 
my $filename = 'report.txt';
open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";
sleep(10);
print $fh "This controller simply waits 10 seconds and appends a line each time it is run.\n";
close $fh;
print "done\n";


my $dbhost = $ENV{"OPENSHIFT_MYSQL_DB_HOST"};
my $dbport = $ENV{"OPENSHIFT_MYSQL_DB_PORT"};
my $dbuser = $ENV{"OPENSHIFT_MYSQL_DB_USERNAME"};
my $dbpw = $ENV{"OPENSHIFT_MYSQL_DB_PASSWORD"};
my $dsn = "DBI:mysql:database=koth;host=$dbhost;port=$dbport";
my $dbh = DBI->connect($dsn, $dbuser, $dbpw);
$dbh->do("CREATE TABLE IF NOT EXISTS servertest (c INTEGER)");
$dbh->disconnect();
