use strict;
use warnings;

use English qw(-no_match_vars);
use Error::Pure::Utils qw(clean);
use Finance::Price::Random;
use Test::More 'tests' => 9;
use Test::NoWarnings;

# Test.
eval {
	Finance::Price::Random->new('');
};
is($EVAL_ERROR, "Unknown parameter ''.\n", 'Bad \'\' parameter.');
clean();

# Test.
eval {
	Finance::Price::Random->new(
		'something' => 'value',
	);
};
is($EVAL_ERROR, "Unknown parameter 'something'.\n",
	'Bad \'something\' parameter.');
clean();

# Test.
my $obj = Finance::Price::Random->new;
isa_ok($obj, 'Finance::Price::Random');

# Test.
eval {
	Finance::Price::Random->new(
		'min' => undef,
	);
};
is($EVAL_ERROR, "Parameter 'min' is required.\n", "Parameter 'min' is required.");
clean();

# Test.
eval {
	Finance::Price::Random->new(
		'min' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'min' must be a number.\n", "Parameter 'min' must be a number.");
clean();

# Test.
eval {
	Finance::Price::Random->new(
		'max' => undef,
	);
};
is($EVAL_ERROR, "Parameter 'max' is required.\n", "Parameter 'max' is required.");
clean();

# Test.
eval {
	Finance::Price::Random->new(
		'max' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'max' must be a number.\n", "Parameter 'max' must be a number.");
clean();

# Test.
eval {
	Finance::Price::Random->new(
		'min' => 100,
		'max' => 99,
	);
};
is($EVAL_ERROR, "Parameter 'max' must be greater than parameter 'min'.\n",
	"Parameter 'max' must be greater than parameter 'min'.");
clean();
