use strict;
use warnings;

use Test::More;
use Time::Piece;

BEGIN {
    use_ok 'Data::Sequential::Datetime';
}

subtest 'instantiate without args' => sub {
    subtest 'isa ok' => sub {
        my $sut = Data::Sequential::Datetime->new;
        isa_ok $sut, 'Data::Sequential::Datetime';
    };

    subtest 'can ok' => sub {
        my $sut = Data::Sequential::Datetime->new;
        can_ok $sut, 'initial';
        can_ok $sut, 'next';
    };

    subtest '#next' => sub {
        my $sut = Data::Sequential::Datetime->new;
        my $first = $sut->next;
        my $second = $sut->next;
        like $first, qr/\d{4}-\d\d-\d\d \d\d:\d\d:\d\d/;
        like $second, qr/\d{4}-\d\d-\d\d \d\d:\d\d:\d\d/;
        isnt $first, $second;
    };
};

subtest 'instantiate with args' => sub {
    subtest 'isa ok' => sub {
        my $time = Time::Piece->strptime("2013-03-01 12:22:00", "%Y-%m-%d %H:%M:%S");
        my $sut  = Data::Sequential::Datetime->new($time);
        isa_ok $sut, 'Data::Sequential::Datetime';
    };

    subtest '#next' => sub {
        my $time = Time::Piece->strptime("2013-03-01 12:22:00", "%Y-%m-%d %H:%M:%S");
        my $sut  = Data::Sequential::Datetime->new($time);
        is $sut->next, "2013-03-01 12:22:01";
        is $sut->next, "2013-03-01 12:22:02";
        is $sut->next, "2013-03-01 12:22:03";
        $sut->next for (1..60);
        is $sut->next, "2013-03-01 12:23:04";
    };

    subtest '#next with integer argument' => sub {
        my $time = Time::Piece->strptime("2013-03-01 12:22:00", "%Y-%m-%d %H:%M:%S");
        my $sut  = Data::Sequential::Datetime->new($time);
        is $sut->next(3), "2013-03-01 12:22:03";
        is $sut->next(7), "2013-03-01 12:22:10";
        is $sut->next(10), "2013-03-01 12:22:20";
    };
};

done_testing;
