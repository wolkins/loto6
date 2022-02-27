FROM ruby:3.1.0
ENV LANG C.UTF-8

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
 && rm -rf /var/lib/apt/lists/*

RUN gem install bundler

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

ENV APP_HOME /myapp
RUN mkdir -p $HOME/run/
WORKDIR $APP_HOME

EXPOSE  3000
CMD ["rails", "server", "-b", "0.0.0.0"]