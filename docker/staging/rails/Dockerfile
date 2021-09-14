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

ENV RAILS_ENV=production
ENV BUNDLE_DEPLOYMENT=true
ENV BUNDLE_PATH=vendor/bundle
ENV BUNDLE_WITHOUT=development:test

RUN mkdir -p /var/www/projects/christchurches-map/current/
WORKDIR /var/www/projects/christchurches-map/current/

ADD Gemfile /var/www/projects/christchurches-map/current/Gemfile
ADD Gemfile.lock /var/www/projects/christchurches-map/current/Gemfile.lock
COPY package.json /var/www/projects/christchurches-map/current/package.json
COPY yarn.lock /var/www/projects/christchurches-map/current/yarn.lock
RUN bundle install --jobs=4
RUN yarn install
RUN bundle exec rails webpacker:compile

COPY . /var/www/projects/christchurches-map/current/
