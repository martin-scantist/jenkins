FROM ubuntu:latest

WORKDIR /vsce

USER root

RUN apt-get update
RUN apt-get upgrade -y
# install nodejs
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install nodejs -y
RUN npm install -g vsce

# RUN export VERSION=$(npm run version)
# RUN vsce package ${{env.TAG_VERSION}} --no-git-tag-version
# RUN echo "TAG_VERSION=${GITHUB_REF#refs/*/}" >> $GITHUB_ENV
# RUN vsce publish -p ${{secrets.VSCE_PAT}}

CMD sleep 10
# EXPOSE 3000