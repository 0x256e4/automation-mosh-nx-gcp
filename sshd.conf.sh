#!/usr/bin/env bash

echo "Tunggu bentar ya manies!!";
cat /etc/ssh/sshd_config > tmp; sudo cat tmp | sed -e "36s/#//; 60s/no/yes/" > /etc/ssh/sshd_config; 
echo "Done manies";
