package Data::Sequential::Base;
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
    die 'override me';
}

1;
