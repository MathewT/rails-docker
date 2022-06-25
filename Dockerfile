FROM smathewthomas/ruby:3.1.2-alpine3.16

COPY . .

RUN gem install bundler

RUN bundle install

RUN bundle binstubs --all

CMD [ "/bin/bash" ]
