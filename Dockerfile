FROM ruby:3.1.0-bullseye AS base

RUN apt-get update && apt-get -y install postgresql-client-13

WORKDIR /app

FROM base

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY . .

CMD bundle exec rails server
