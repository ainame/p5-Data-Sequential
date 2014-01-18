# NAME

Data::Sequential - generate sequential values of some formats

# SYNOPSIS

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

# DESCRIPTION

Data::Sequential is a generator for sequential data.

# LICENSE

Copyright (C) ainame.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ainame <s.namai.2012@gmail.com>
