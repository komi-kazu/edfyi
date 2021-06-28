FROM ruby:2.6.5

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       vim

RUN mkdir /edfyi

WORKDIR /edfyi

ADD Gemfile /edfyi/Gemfile
ADD Gemfile.lock /edfyi/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /edfyi

RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids