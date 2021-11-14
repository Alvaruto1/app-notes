# syntax=docker/dockerfile:1
FROM ruby:3.0.2
RUN apt-get update -qq && apt-get install -y nodejs 
RUN apt-get install -y npm 
RUN npm install --global yarn
WORKDIR /BackAppNotes

COPY Gemfile /BackAppNotes/Gemfile
RUN bundle install



EXPOSE 3000


CMD ["rails", "server", "-b", "0.0.0.0", "-e", "development"]
