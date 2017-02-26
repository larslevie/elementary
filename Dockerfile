FROM ruby:alpine
MAINTAINER Lars Levie <larslevie@gmail.com>

RUN apk --update add \
      curl \
      postgresql-client \
      nodejs \
      tzdata

WORKDIR /code
COPY Gemfile Gemfile.lock /code/

RUN apk --update add --virtual build-dependencies \
      build-base \
      ruby-dev \
      postgresql-dev \
      libc-dev \
      linux-headers \
    && bundle install \
    && apk del build-dependencies

COPY . /code/

CMD ["bundle", "exec", "rails", "s", "Puma", "-b", "0.0.0.0"]
