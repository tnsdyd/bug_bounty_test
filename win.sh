#!/bin/bash

TEST='sshpass -p camac476357! ssh Administrator@15.164.164.104 -o StrictHostKeyChecking=no'
TEST2='sshpass -p camac476357! scp test3.tar Administrator@15.164.164.104:c:/'

$TEST dir 'c:\'
$TEST dir 'c:\inetpub\wwwroot'
$TEST2
$TEST dir 'c:\'
$TEST tar -xvf c:/test3.tar -C '\inetpub'
$TEST copy '\inetpub\test3\test*' '\inetpub\wwwroot\'
$TEST dir 'c:\inetpub\wwwroot'
