FROM juandelgado/headless-firefox-cucumber:latest
MAINTAINER juan@ustwo.com <juan@ustwo.com>

RUN mkdir -p /home/sample
WORKDIR /home/sample

COPY sample/features features
COPY sample/Gemfile Gemfile
COPY sample/Gemfile.lock Gemfile.lock

RUN bundle
