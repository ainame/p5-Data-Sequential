package Data::Sequential::Number;
use strict;
use warnings;

sub new {
    my ($class, $initial) = @_;
    return bless {
        initial => $initial // 0,
        current => $initial // 0,
    }, $class;
}

sub initial {
    my $self = shift;
    return $self->{initial};
}

sub next {
    my ($self, $delta) = @_;
    $delta //= 1;
    $self->{current} += $delta;
    return $self->{current};
}

1;
