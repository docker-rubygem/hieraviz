FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.4

RUN gem install hieraviz --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["hv-ctl"]
CMD ["--help"]
