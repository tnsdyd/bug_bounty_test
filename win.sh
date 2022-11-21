#!/bin/bash

TEST='sshpass -p camac476357! ssh Administrator@15.164.164.104 -o StrictHostKeyChecking=no'
TEST2='sshpass -p camac476357! scp test.html Administrator@15.164.164.104:c:/'

$TEST dir 'c:\inetpub\wwwroot'
$TEST2
$TEST copy 'c:/test.html c:\inetpub\wwwroot'
$TEST dir 'c:\inetpub\wwwroot'
