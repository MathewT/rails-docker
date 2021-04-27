FROM smathewthomas/ruby:3.0.1-alpine3.13

RUN apk add --update build-base bash bash-completion libffi-dev

RUN apk add sqlite sqlite-dev

WORKDIR /home/app

RUN mkdir $HOME/.ssh
RUN touch $HOME/.bashrc

RUN echo "alias ll='ls -alF'" >> $HOME/.bashrc
RUN echo "alias la='ls -A'" >> $HOME/.bashrc
RUN echo "alias l='ls -CF'" >> $HOME/.bashrc
RUN echo "alias q='exit'" >> $HOME/.bashrc
RUN echo "alias c='clear'" >> $HOME/.bashrc

ENV PORT 3000

EXPOSE $PORT

RUN gem install rails bundler 

RUN gem install rails

CMD ["/bin/sh"]

