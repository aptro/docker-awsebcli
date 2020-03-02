FROM ubuntu
RUN apt update
RUN apt install -y build-essential zlib1g-dev libncurses-dev libffi-dev libsqlite3-dev libreadline-dev libbz2-dev python-dev python-pip nodejs nodejs-dev libssl1.0-dev node-gyp npm
RUN npm install -g newman
RUN pip install awsebcli --upgrade --user
