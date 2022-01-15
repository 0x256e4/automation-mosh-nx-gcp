#!/usr/bin/env bash

echo "Tunggu bentar ya manies!!";
apt update; apt install -y tmux ubuntu-desktop p7zip-full p7zip-rar libcurl4-openssl-dev libssl-dev; git clone https://github.com/danielmiessler/SecLists.git; wget https://github.com/OJ/gobuster/releases/download/v3.1.0/gobuster-linux-amd64.7z; 7z e gobuster-linux-amd64.7z; chmod +x gobuster; mv gobuster /usr/bin/; wget https://download.nomachine.com/download/7.7/Linux/nomachine_7.7.4_1_amd64.deb; dpkg -i nomachine_7.7.4_1_amd64.deb; cat /etc/ssh/sshd_config > tmp; sudo cat tmp | sed -e "36s/#//; 60s/no/yes/; 36s/prohibit-password/yes/" > /etc/ssh/sshd_config; service sshd restart; wget https://raw.githubusercontent.com/0x256e4/automation-mosh-nx-gcp/main/.tmux.conf; mv .tmux.conf ~/; rm -rf tmp nomachine_7.7.4_1_amd64.deb gobuster-linux-amd64.7z;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
echo "Done manies";
