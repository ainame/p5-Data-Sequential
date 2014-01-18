use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'Data::Sequential::Alphabet';
}

subtest 'instantiate without args' => sub {
    subtest 'isa_ok' => sub {
        my $sut = Data::Sequential::Alphabet->new;
        isa_ok $sut, 'Data::Sequential::Alphabet';
    };

    subtest '#next' => sub {
        my $sut = Data::Sequential::Alphabet->new;
        is $sut->next, 'a';
        is $sut->next, 'b';
        is $sut->next, 'c';
    };
};

subtest 'instantiate with args' => sub {
    subtest 'isa_ok' => sub {
        my $sut = Data::Sequential::Alphabet->new('a');
        isa_ok $sut, 'Data::Sequential::Alphabet';
    };

    subtest '#next' => sub {
        my $sut = Data::Sequential::Alphabet->new('c');
        is $sut->next, 'd';
        is $sut->next(3), 'g';
        is $sut->next(27), 'h';
    };
};

done_testing;
