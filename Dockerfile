FROM ruby:2.4-slim
MAINTAINER Juan Delgado <juan@ustwo.com>

ENV GECKO_VERSION=v0.17.0

RUN mkdir /home/ustwo
WORKDIR /home/ustwo

RUN apt-get update && \
    apt-get install -y xvfb build-essential libffi-dev wget && \
    echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" > /etc/apt/sources.list.d/debian-mozilla.list && \
    wget mozilla.debian.net/pkg-mozilla-archive-keyring_1.1_all.deb && \
    dpkg -i pkg-mozilla-archive-keyring_1.1_all.deb && \
    apt-get update && \
    apt-get install -y -t jessie-backports firefox && \
    wget https://github.com/mozilla/geckodriver/releases/download/$GECKO_VERSION/geckodriver-$GECKO_VERSION-linux64.tar.gz && \
    tar -zxvf geckodriver-$GECKO_VERSION-linux64.tar.gz && \
    chmod +x geckodriver && \
    mv geckodriver /usr/local/bin && \
    rm pkg-mozilla-archive-keyring_1.1_all.deb geckodriver-$GECKO_VERSION-linux64.tar.gz

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle

RUN ["cucumber", "--version"]
