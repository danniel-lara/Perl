#!/usr/bin/perl
use strict;
use warnings;

use DBI;

print "Digita o usuário do banco:\n";
my $user = <>;
chomp $user;   
print "Digita a senha do banco:\n";
my $pass = <>;
chomp $pass; 
print "Digite o Servidor:\n";
my $host = <>;
chomp $host ;

my $dbh = "DBI:mysql:host=$host";

$dbh = DBI->connect($dbh, $user, $pass)
or die ("Não foi possível fazer conexão: " . $DBI::errstr);

print "Conexão realizado com sucesso\n";
