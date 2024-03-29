#!/usr/bin/perl
# backupDirectories.pl
# Create Date: January 13, 2012
# Created By:  Robert Pereda
# Purpose:     Find Directories and backup all files, then zip them up.

use strict;
use warnings;
#use diagnostics;

chomp (my $directoryRequest = (@ARGV));
print "$directoryRequest";
chomp (my $pwd = `pwd`);
print "\nThe directory before the If statement is $pwd";

if ($directoryRequest) {
    print "\nI\'m in a blank variable block\n";
    chdir ".";
}
else {
    print "\n\tI\'m in the else block\n";
    print "\nmy current directory is $pwd";
    chdir (@ARGV);
}
opendir THEDIR, ".";
while (my $fileName = readdir THEDIR) {
    print $fileName . "\n";
}
closedir THEDIR;