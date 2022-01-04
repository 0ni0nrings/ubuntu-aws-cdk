FROM ubuntu:xenial

LABEL maintainer="0ni0nrings"

ENV AWSCDK_VERSION=2.3.0

RUN  apt -y update; \
   apt install -y python3; \
   apt install -y openssh-client build-essential libssl-dev; \
   apt install -y sshpass curl wget zip unzip git jq vim; \
   apt install -y python3-pip; \
   apt install -y software-properties-common; \
   add-apt-repository --yes --update ppa:ansible/ansible; \
   apt install -y ansible; \
   apt install -y python-boto; \
   apt install -y python-boto3; \
   apt-get clean; \
   pip3 install --upgrade pip

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash; \
   export NVM_DIR="$HOME/.nvm"; \
   [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; \
   [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"; \
   apt purge -y --auto-remove nodejs; \
   curl -fsSL https://deb.nodesource.com/setup_16.x | bash -; \
   apt install -y nodejs

RUN apt install -y npm; \
   npm install -g npm@latest; \
   npm install -g aws-cdk@${AWSCDK_VERSION}; \
   npm install -g yarn

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"; \
   unzip awscliv2.zip; \
   ./aws/install
