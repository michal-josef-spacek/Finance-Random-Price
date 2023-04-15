use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Perl class for creating random price.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'Finance-Price-Random';
readme_from 'Random.pm';
requires 'Class::Utils' => 0.03;
requires 'Error::Pure' => 0.11;
requires 'perl' => '5.6.0';
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/Finance-Price-Random/issues';
resources 'homepage' => 'https://github.com/michal-josef-spacek/Finance-Price-Random';
resources 'repository' => 'git://github.com/michal-josef-spacek/Finance-Price-Random';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();