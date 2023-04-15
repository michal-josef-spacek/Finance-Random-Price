use strict;
use warnings;

use Finance::Price::Random;
use Test::More 'tests' => 5;
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

# Test.
$obj = Finance::Price::Random->new(
	'currencies' => ['CZK'],
	'min' => -100,
	'max' => -100,
);
$ret = $obj->random;
is($ret, '-100,00 Kc', 'Precise random value (-100,00 Kc).');

# Test.
SKIP: {
skip "Fix precise decimal number.", 1;
$obj = Finance::Price::Random->new(
	'currencies' => ['CZK'],
	'decimal_num' => 2,
	'min' => 99.50,
	'max' => 99.50,
);
$ret = $obj->random;
is($ret, '99,50 Kc', 'Precise random value (99,50 Kc).');
};
