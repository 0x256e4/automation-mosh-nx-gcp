#!/usr/bin/env bash

echo "Tunggu bentar ya manies!!";
cat /etc/ssh/sshd_config > tmp; sudo cat tmp | sed -e "36s/#//; 60s/no/yes/" > /etc/ssh/sshd_config; wget https://raw.githubusercontent.com/0x256e4/automation-mosh-nx-gcp/main/.tmux.conf; mv .tmux.conf ~/; rm tmp;
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh;
echo "Done manies";
