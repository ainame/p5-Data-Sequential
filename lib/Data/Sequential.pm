package Data::Sequential;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";



1;
__END__

=encoding utf-8

=head1 NAME

Data::Sequential - generate sequential values of some formats

=head1 SYNOPSIS

    use Data::Sequential::Number;
    my $generator = Data::Sequential::Number->new;
    print $generator->current; #=> 0
    print $generator->next;    #=> 1
    print $generator->next;    #=> 2
    ....

    use Data::Sequential::Datetime;
    my $generator = Data::Sequential::Datetime->new('2014-01-01 00:00:00');
    print $generator->current; #=> '2014-01-01 00:00:00'
    print $generator->next;    #=> '2014-01-01 00:00:01'
    print $generator->next;    #=> '2014-01-01 00:00:02'
    ....

    use Data::Sequential::Alphabet;
    my $generator = Data::Sequential::Alphabet->new('a');
    print $generator->current; #=> 'a'
    print $generator->next;    #=> 'b'
    print $generator->next;    #=> 'c'
    ....

=head1 DESCRIPTION

Data::Sequential is a generator for sequential data.

=head1 LICENSE

Copyright (C) ainame.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ainame E<lt>s.namai.2012@gmail.comE<gt>

=cut

