FROM ubuntu

RUN apt-get update

RUN apt-get install -yq ruby ruby-dev build-essential git zlib1g-dev nodejs

RUN gem install --no-ri --no-rdoc bundler 

ADD Gemfile /app/Gemfile

ADD Gemfile.lock /app/Gemfile.lock

RUN cd /app; bundle install

ADD . /app

EXPOSE 4567

WORKDIR /app

CMD bundle exec middleman server