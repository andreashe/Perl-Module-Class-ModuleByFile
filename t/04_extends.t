#!/usr/bin/perl


use lib '../lib';
use lib 'lib';
use lib 't/lib';

use Class::ModuleByFile 'get_parent';

use Data::Dumper;
use Test::More tests => 1;


my $file;

$file = 'lib/Local/Foo.pm';

if (!-e $file){
  $file = 't/lib/Local/Foo.pm';
}

if (!-e $file){
  die('cant run test, relative path wrong.');
}


my $module = get_parent($file);

is( $module , 'Local::Bar', 'get parent module name');