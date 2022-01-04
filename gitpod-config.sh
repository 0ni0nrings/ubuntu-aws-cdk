#!/bin/bash
ROOT_DIR=`pwd`
cd /opt
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
sudo apt install -y python3
sudo apt install -y openssh-client build-essential libssl-dev
sudo apt install -y sshpass curl wget zip unzip git jq vim
sudo apt install -y python3-pip
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
sudo apt install -y python-boto
sudo apt install -y python-boto3
sudo apt-get clean
pip3 install --upgrade pip
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"; \
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
sudo apt purge -y --auto-remove nodejs
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
sudo apt install -y nodejs
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install terraform
apt install -y npm
npm install -g npm@latest
npm install -g aws-cdk
npm install -g aws-cdk@next
npm install -g yarn
cd $ROOT_DIR
