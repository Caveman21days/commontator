FROM ruby:3.4.1

WORKDIR /app

COPY . .

RUN gem install bundler && bundle install && gem build commontator.gemspec