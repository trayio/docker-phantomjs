FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y install \
        curl \
        tar \
        bzip2 \
        fontconfig \
        libicu52 \
        libjpeg-turbo8 \
        sudo \
        git \
        apt-transport-https \
        python \
        g++ \
        make

RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_4.x trusty main' > /etc/apt/sources.list.d/nodesource.list && \
    apt-get update && apt-get install -y nodejs && \
    curl -s -L https://github.com/mirraj2/PhantomjsUbuntu/blob/master/phantomjs-ubuntu.gz?raw=true | gunzip > /usr/local/bin/phantomjs && \
    chmod +x /usr/local/bin/phantomjs && \
    npm install -g npm
