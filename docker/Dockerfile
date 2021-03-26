FROM ruby:2.7.2

EXPOSE 3000

WORKDIR /code

RUN useradd -ms /bin/bash admin

COPY Gemfile* .

RUN bundle install

USER admin
