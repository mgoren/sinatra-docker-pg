FROM ruby:2.6.5

WORKDIR /myapp
COPY startup.sh /
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

EXPOSE 4567

CMD  ["/bin/bash", "/startup.sh"]