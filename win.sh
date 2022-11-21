#!/bin/bash

PASS='sshpass -p camac476357! ssh Administrator@13.209.89.118 -o StrictHostKeyChecking=no'
PASS2='sshpass -p camac476357! scp test.html Administrator@13.209.89.118:c:/'

sudo apt install -y sshpass

$PASS exit
