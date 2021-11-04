FROM smathewthomas/ruby:3.0.2-alpine3.14

RUN apk add --update build-base bash bash-completion libffi-dev tzdata postgresql-client postgresql-dev

RUN gem install rails bundler 

RUN gem install rails

RUN apk add --update nodejs npm

RUN apk add --update yarn

CMD ["/bin/bash"]

