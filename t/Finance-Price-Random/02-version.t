use strict;
use warnings;

use Finance::Price::Random;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Finance::Price::Random::VERSION, 0.01, 'Version.');
