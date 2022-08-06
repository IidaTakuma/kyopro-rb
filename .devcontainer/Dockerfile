FROM ruby:2.7.1

RUN set -ex
RUN apt-get update

# need for apt-add-repository command
RUN apt-get -y install software-properties-common

RUN apt-add-repository ppa:fish-shell/release-3

RUN apt-get install -y curl git vim fish

COPY /Gemfile .
RUN bundle install --jobs=2

WORKDIR /work

CMD [ "/bin/bash" ]
