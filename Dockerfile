FROM node:alpine

RUN \
  apk update && \
  apk add --virtual build-dependencies libffi-dev openssl-dev python-dev build-base git python py-pip && \
  pip install awsebcli && \
  pip install awscli && \
  npm install -g newman
