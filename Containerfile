FROM registry.access.redhat.com/ubi8/nodejs-16:latest
LABEL maintainer "Chris Collins <collins.christopher@gmail.com>"

RUN npm install -g doctoc && npm cache clean --force
WORKDIR /tmp
ENTRYPOINT ["doctoc"]
CMD ["--help"]


