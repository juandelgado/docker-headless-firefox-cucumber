FROM ruby:2.4-slim
MAINTAINER Juan Delgado <juan@ustwo.com>

RUN mkdir /home/ustwo
WORKDIR /home/ustwo

RUN apt-get update && \
    apt-get install -y xvfb gcc build-essential libffi-dev wget vim

RUN echo "deb http://mozilla.debian.net/ jessie-backports firefox-release" > /etc/apt/sources.list.d/debian-mozilla.list
RUN wget mozilla.debian.net/pkg-mozilla-archive-keyring_1.1_all.deb && dpkg -i pkg-mozilla-archive-keyring_1.1_all.deb
RUN apt-get update && \
    apt-get install -y -t jessie-backports firefox

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN gem install bundler
RUN bundle install

RUN wget https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz
RUN tar -zxvf geckodriver-v0.17.0-linux64.tar.gz
RUN chmod +x geckodriver
RUN mv geckodriver /usr/local/bin

RUN rm pkg-mozilla-archive-keyring_1.1_all.deb \
        geckodriver-v0.17.0-linux64.tar.gz \
        Gemfile \
        Gemfile.lock
