FROM ubuntu:latest

WORKDIR /vsce

USER root

RUN apt update
RUN apt upgrade -y
# install nodejs
RUN apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt install -y nodejs
RUN npm install -g vsce

# RUN export VERSION=$(npm run version)
# RUN vsce package ${{env.TAG_VERSION}} --no-git-tag-version
# RUN echo "TAG_VERSION=${GITHUB_REF#refs/*/}" >> $GITHUB_ENV
# RUN vsce publish -p ${{secrets.VSCE_PAT}}

CMD [ "node", "server.js" ]
# EXPOSE 3000