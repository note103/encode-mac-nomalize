#!/usr/bin/env perl
use strict;
use warnings;
use feature 'say';

use Encode;
use Unicode::Normalize;

my @t = <DATA>;
for my $t (@t) {
    my $filename = Encode::decode('utf-8', $t);
    $t = Unicode::Normalize::NFC($filename);
    $t = encode('utf-8', $t);
    print $t;
}

__END__
