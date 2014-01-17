package Data::Sequential::Base;
use strict;
use warnings;

sub new {
    my ($class, $initial) = @_;
    my $default = $class->initial_value;
    return bless {
        initial => $initial // $default,
        current => $initial // $default,
    }, $class;
}

sub initial {
    my $self = shift;
    return $self->{initial};
}

sub initial_value {
    die 'override me';
}

sub next {
    die 'override me';
}

1;
