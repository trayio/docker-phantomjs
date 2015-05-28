FROM ubuntu:14.04

RUN apt-get update && \
    apt-get -y install curl tar bzip2 fontconfig libicu52 libjpeg-turbo8 npm sudo && \
    curl -s -L https://github.com/mirraj2/PhantomjsUbuntu/blob/master/phantomjs-ubuntu.gz?raw=true | gunzip > /usr/local/bin/phantomjs && \
    chmod +x /usr/local/bin/phantomjs && \
    ln -s /usr/bin/nodejs /usr/bin/node
