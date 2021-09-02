# Debian
FROM ruby:3.0.0
ENV LANG C.UTF-8

# ready to install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# install required libraries
RUN apt-get update -qq && apt-get install -y build-essential vim yarn

# install node
RUN apt-get install -y nodejs && yarn global add n && n 14.17.6

RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install --jobs=4
COPY . /usr/src/app/
