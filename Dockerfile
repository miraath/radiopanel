FROM ruby:2.4-alpine

ADD Gemfile /app/
ADD Gemfile.lock /app/

RUN apk --update add --virtual build-dependencies build-base ruby-dev openssl-dev libxml2-dev libxslt-dev \
    sqlite libc-dev linux-headers nodejs tzdata sqlite-dev && gem install bundler

RUN cd /app ; bundle install

ENV PYTHON_VERSION=2.7.12-r0
ENV PY_PIP_VERSION=8.1.2-r0
ENV SUPERVISOR_VERSION=3.3.0

RUN apk update && apk add -u python=$PYTHON_VERSION py-pip=$PY_PIP_VERSION
RUN pip install supervisor==$SUPERVISOR_VERSION
RUN apk add file
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD . /app
# RUN chown -R nobody:nogroup /app
# USER nobody

WORKDIR /app

# Set Rails to run in production
ENV RAILS_ENV production
ENV RACK_ENV production
ENV SECRET_KEY_BASE 4bf58fb84b69e93b4a204c92fee831e217ff2457f59850cd8bf764ed048cfd50ad0f21e2bd0b264ca418b846014d8fdd55c31692eb3cbc0a41ee104a1eaf01f5

# Precompile Rails assets
# RUN bundle exec rails db:create
RUN bundle exec rails db:migrate
RUN bundle exec rails db:seed
RUN bundle exec rake assets:precompile

RUN apk add bash
RUN whenever -w

CMD ["/usr/bin/supervisord"]
