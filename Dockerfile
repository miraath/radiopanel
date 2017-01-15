FROM ruby:alpine

ADD Gemfile /app/
ADD Gemfile.lock /app/

RUN apk --update add --virtual build-dependencies build-base ruby-dev openssl-dev libxml2-dev libxslt-dev \
    sqlite libc-dev linux-headers nodejs tzdata sqlite-dev && gem install bundler

RUN cd /app ; bundle install

ADD . /app
# RUN chown -R nobody:nogroup /app
# USER nobody

ENV RAILS_ENV development
WORKDIR /app
RUN bundle exec rails db:create
RUN bundle exec rails db:migrate
CMD ["bundle", "exec", "rails", "s", "-p", "8080",  "-b", "0.0.0.0"]
