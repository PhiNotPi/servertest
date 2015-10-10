use strict;
use warnings;
 
my $filename = 'report.txt';
open(my $fh, '>>', $filename) or die "Could not open file '$filename' $!";
sleep(10);
print $fh "This controller simply waits 10 seconds and appends a line each time it is run.\n";
close $fh;
print "done\n";
