package Data::Sequential::Alphabet;
use strict;
use warnings;

use parent 'Data::Sequential::Base';
use List::MoreUtils qw/first_index/;

my @ALPHABETS = split '', 'abcdefghijklmnopqrstuvwxyz';
my $NUMBER_OF_ALPHABETS = scalar(@ALPHABETS);

sub initial { -1 } # = 'z'

sub new {
    my ($class, $initial) = @_;
    return $class->SUPER::new($class->_convert_index($initial));
}

sub _convert_index {
    my ($class, $char) = @_;
    return -1 unless $char;
    return first_index { $_ eq $char } @ALPHABETS;
}

sub format {
    my ($self, $index) = @_;
    return @ALPHABETS[$index % $NUMBER_OF_ALPHABETS];
}

1;
