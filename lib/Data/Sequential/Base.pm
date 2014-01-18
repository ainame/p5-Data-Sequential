package Data::Sequential::Base;
use strict;
use warnings;

sub new {
    my ($class, $initial) = @_;
    my $default = $class->initial;
    return bless {
        current => $initial // $default,
    }, $class;
}

sub initial { die 'override me' }

sub current {
    my $self = shift;
    return $self->format($self->{current});
}

sub next {
    my ($self, $delta) = @_;
    $delta ||= 1;
    return $self->format($self->incr_by($delta));
}

sub incr_by {
    my ($self, $delta) = @_;
    return $self->{current} += $delta;
}

sub format {
    my ($self, $value) = @_;
    return $value;
}

1;
