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

RUN pip install awsebcli==3.14.5
RUN npm install -g newman
