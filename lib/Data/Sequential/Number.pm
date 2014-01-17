package Data::Sequential::Number;
use strict;
use warnings;

use parent 'Data::Sequential::Base';

sub initial_value { 0 }

sub next {
    my ($self, $delta) = @_;
    $delta //= 1;
    $self->{current} += $delta;
    return $self->{current};
}

1;
