#!/usr/bin/env bash

echo "Tunggu bentar ya manies!!";
apt update; apt install -y tmux p7zip-full p7zip-rar; git clone https://github.com/danielmiessler/SecLists.git; wget https://github.com/OJ/gobuster/releases/download/v3.1.0/gobuster-linux-amd64.7z; 7z e gobuster-linux-amd64.7z; chmod +x gobuster; mv gobuster /usr/bin/; cat /etc/ssh/sshd_config > tmp; sudo cat tmp | sed -e "36s/#//; 60s/no/yes/; 36s/prohibit-password/yes/" > /etc/ssh/sshd_config; service sshd restart; wget https://raw.githubusercontent.com/0x256e4/automation-mosh-nx-gcp/main/.tmux.conf; mv .tmux.conf ~/; rm -rf tmp gobuster-linux-amd64.7z;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
echo "Done manies";
