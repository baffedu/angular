FROM node:8.12.0
MAINTAINER wish@baffedu.com

RUN apt-get update && apt-get -y install rsync \
    && apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g @angular/cli