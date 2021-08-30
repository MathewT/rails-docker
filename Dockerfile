FROM smathewthomas/ruby:3.0.2-alpine3.14

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler 

RUN gem install rails

CMD ["/bin/sh"]

