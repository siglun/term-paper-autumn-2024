#!/usr/bin/perl -w

use strict;

my @text = ("README.md");

while(<>) {
    chomp $_;

    push(@text,$_);
}

for(my $file = 1; $file <= $#text; $file++) {

    my $prev = $text[$file-1];
    my $this = $text[$file];
    my $next = $text[$file+1] ? $text[$file+1] : "README.md";
    


    print "[< previous]($prev)  [next >]($next)\n\n";

}
