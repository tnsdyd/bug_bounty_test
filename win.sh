#!/bin/bash

TEST='sshpass -p cmk476357! ssh Administrator@3.39.10.170 -o StrictHostKeyChecking=no'
TEST2='sshpass -p cmk476357! scp test3.tar Administrator@3.39.10.170:c:/'

$TEST dir 'c:\'
$TEST2
$TEST dir 'c:\'
$TEST tar -xvf c:/test3.tar -C '\inetpub'
$TEST copy '\inetpub\test3\test*' '\inetpub\wwwroot\'
$TEST dir 'c:\inetpub\wwwroot'
