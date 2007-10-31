use inc::Module::Install;
name 'Parse-IRC';
author 'Chris Williams <chris@bingosnet.co.uk>';
version_from 'lib/Parse/IRC.pm';
abstract_from 'lib/Parse/IRC.pm';
license 'perl';
build_requires 'Test::More' => 0.47;
requires 'Exporter' => 0;
WriteAll;
