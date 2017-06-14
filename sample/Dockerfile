FROM juandelgado/headless-firefox-cucumber:latest
MAINTAINER juan@ustwo.com <juan@ustwo.com>

RUN mkdir -p /home/sample
WORKDIR /home/sample

COPY features features
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle
