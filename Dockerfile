FROM ruby:2.5.1-alpine

RUN apk update \
        && apk add \
            net-tools \
            build-base \
            mysql-client \
            nodejs \
            tzdata \
            mysql-dev
COPY . /app
WORKDIR /app
RUN gem install tzinfo-data
RUN bundle install

EXPOSE 3000
CMD ["start", "mysql"]
CMD ["rails", "server", "-b", "0.0.0.0"]
