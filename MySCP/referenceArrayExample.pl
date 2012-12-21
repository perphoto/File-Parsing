#!/usr/bin/perl
# backupDirectories.pl
# Create Date: January 13, 2012
# Created By:  Robert Pereda
# Purpose:     Find Directories and backup all files, then zip them up.

use strict;
use warnings;
#use diagnostics;

my $myHomeDirectory = "/Users/robert.pereda";

my %phoneListing = (
    Liz => {
        'Home' => '703-595-4885',
        'Mobile' => '703-298-7246',
    },
    Rob => {
        'Home' => '703-595-4885',
        'Work' => '703-693-8288',
        'Mobile' => '703-835-6003',
    },
);

print "\nWho are you looking for? (Rob or Liz)";
chomp (my $name = <STDIN>);
print "Which number would you like? (Home or Mobile)";
chomp (my $phone = <STDIN>);
print "The number is\:\t$phoneListing{$name}->{$phone}\n";
