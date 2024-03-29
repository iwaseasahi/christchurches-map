# Debian
FROM ruby:3.0.2
ENV LANG C.UTF-8

# ready to install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# install required libraries
RUN apt-get update -qq && apt-get install -y build-essential vim yarn

# install node
RUN apt-get install -y nodejs && yarn global add n && n 14.17.6

ENV RAILS_ENV=staging
ENV BUNDLE_WITHOUT=development:test

RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/

ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
ADD package.json /usr/src/app/package.json
ADD yarn.lock /usr/src/app/yarn.lock

# docker image を circleci から作成する場合、ディレクトリがないので作成する必要がある
RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids

RUN bundle install --jobs=4
RUN yarn install

COPY . /usr/src/app/

# volume を作成することで nginx から読み取るができる
# https://docs.docker.jp/engine/reference/builder.html#volume
VOLUME /usr/src/app/public /usr/src/app/tmp
