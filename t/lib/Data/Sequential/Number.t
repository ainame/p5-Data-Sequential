use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'Data::Sequential::Number';
}

subtest 'instantiate with no args' => sub {
    subtest 'should initialize with 0' => sub {
        my $sut = Data::Sequential::Number->new;
        isa_ok $sut, 'Data::Sequential::Number';
        is $sut->initial, 0;
    };

    subtest '#next should return sequential number when each called' => sub {
        my $sut = Data::Sequential::Number->new;
        is $sut->next, 1;
        is $sut->next, 2;
        is $sut->next, 3;
        $sut->next for (1..100);
        is $sut->next, 104;
    };


    subtest '#next should return sequential number which incremented by arg' => sub {
        my $sut = Data::Sequential::Number->new;
        is $sut->next(2), 2;
        is $sut->next(3), 5;
        is $sut->next(100), 105;
    };
};

done_testing;
