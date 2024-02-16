#!/usr/bin/perl

use strict;
use warnings;

print "start\n";
sleep 5;
system("sudo apt update && sudo apt install -y curl default-jdk");

my $pwds = "$ENV{HOME}/neisven-start-mine/";
mkdir $pwds unless -d $pwds;
chdir $pwds or die "Cannot change directory to $pwds: $!";

system("curl -O https://raw.githubusercontent.com/Neisven/start-mine/main/mine.sh");
system("curl -O https://raw.githubusercontent.com/Neisven/start-mine/main/mine.jar");

rename "mine.sh", "$pwds/mine.sh" or die "Cannot move mine.sh: $!";
rename "mine.jar", "$pwds/mine.jar" or die "Cannot move mine.jar: $!";

chmod 0755, "$pwds/mine.sh";

$ENV{PATH} = "$ENV{PATH}:$pwds";
system("$pwds/mine.sh");
print "enter command: mine.sh for execute TL.\n";
unlink "install.sh";

system("$pwds/mine.sh");
