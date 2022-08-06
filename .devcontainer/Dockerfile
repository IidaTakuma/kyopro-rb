FROM ruby:2.7.1-slim

RUN set -ex
RUN apt-get update

# need for apt-add-repository command
RUN apt-get -y install software-properties-common

RUN apt-add-repository ppa:fish-shell/release-3

RUN apt-get install -y curl git vim fish

RUN gem install rubocop

CMD [ "/bin/bash" ]
