FROM python:3.6-alpine
RUN apk update
# Install base and dev packages
RUN apk add --no-cache --virtual .build-deps
RUN apk add bash
# Install build packages
RUN apk add make && apk add curl && apk add openssh
# Install git
RUN apk add git
# Install nodejs
RUN apk add nodejs
# Install npm
RUN apk add npm
# Set timezone to UTC by default
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime
# Install aws-cli
RUN pip install awscli
RUN rm /var/cache/apk/*
RUN \
  pip install awsebcli==3.10.1 && \
  mkdir -p "${HOME}/.aws"
RUN npm install -g newman
