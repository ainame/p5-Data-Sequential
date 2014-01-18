package Data::Sequential::Datetime;
use strict;
use warnings;

use parent 'Data::Sequential::Base';
use Time::Piece;

sub initial { time() }

sub format {
    my ($self, $epoch_time) = @_;
    my $time = Time::Piece->new($epoch_time);
    return $time->strftime('%Y-%m-%d %H:%M:%S');
}

1;
