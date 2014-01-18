package Data::Sequential::Number;
use strict;
use warnings;

use parent 'Data::Sequential::Base';

sub initial { 0 }

sub next {
    my ($self, $delta) = @_;
    $delta ||= 1;
    return $self->incr_by($delta);
}

1;
