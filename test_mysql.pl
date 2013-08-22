#!/usr/bin/perl
use strict;
use warnings;

use DBI;

my $dbh = DBI->connect("DBI:mysql:BASE:HOST", 'USER','PASSWORD')
   or die ("Não foi possível fazer conexão: " . $DBI::errstr);

print "Conexão realizado com sucesso\n";
