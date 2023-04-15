use strict;
use warnings;

use Finance::Price::Random;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Finance::Price::Random->new;
my $ret = $obj->random;
isa_ok($ret, 'Data::Currency');

# Test.
$obj = Finance::Price::Random->new(
	'currencies' => ['USD'],
	'min' => 100,
	'max' => 100,
);
$ret = $obj->random;
is($ret, '$100.00', 'Precise random value ($100.00).');
