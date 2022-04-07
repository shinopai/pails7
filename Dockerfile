FROM ruby:3.1

ENV LANG C.UTF-8

EXPOSE 3000

RUN mkdir /paiapp
WORKDIR /paiapp
COPY Gemfile /paiapp/Gemfile
COPY Gemfile.lock /paiapp/Gemfile.lock
RUN bundle install
COPY . /paiapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
