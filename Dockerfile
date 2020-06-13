# Debian
FROM ruby:2.7.1
ENV LANG C.UTF-8

# install required libraries
RUN apt-get update -qq && apt-get install -y build-essential nodejs vim

RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install --jobs=4
COPY . /usr/src/app/
