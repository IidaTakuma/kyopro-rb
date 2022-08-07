FROM ruby:2.7.1

RUN set -ex

# 'software-properties-common' need for apt-add-repository command
RUN apt-get update \
 && apt-get -y install software-properties-common \
 && apt-add-repository ppa:fish-shell/release-3 \
 && apt-get install -y curl git vim fish

COPY /Gemfile .
RUN bundle install --jobs=2

WORKDIR /work

CMD [ "/bin/bash" ]
