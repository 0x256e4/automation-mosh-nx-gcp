#!/usr/bin/env bash

echo "Tunggu bentar ya manies!!";
cat /etc/ssh/sshd_config > tmp; sudo cat tmp | sed -e "36s/#//; 60s/no/yes/; 36s/prohibit-password/yes/" > /etc/ssh/sshd_config; service sshd restart; wget https://raw.githubusercontent.com/0x256e4/automation-mosh-nx-gcp/main/.tmux.conf; mv .tmux.conf ~/; rm tmp;
echo "Done manies";
