FROM node

ENV HOME /src
WORKDIR $HOME
ADD . $HOME

RUN npm install -g vue-cli
