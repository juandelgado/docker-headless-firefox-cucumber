FROM ruby:2.4-slim
MAINTAINER Juan Delgado <juan@ustwo.com>

RUN mkdir /home/ustwo
WORKDIR /home/ustwo

RUN apt-get update && \
    apt-get install -y xvfb build-essential libffi-dev wget firefox-esr && \
    wget https://github.com/mozilla/geckodriver/releases/download/v0.17.0/geckodriver-v0.17.0-linux64.tar.gz && \
    tar -zxvf geckodriver-v0.17.0-linux64.tar.gz && \
    chmod +x geckodriver && \
    mv geckodriver /usr/local/bin && \
    rm geckodriver-v0.17.0-linux64.tar.gz

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle

RUN ["cucumber", "--version"]
