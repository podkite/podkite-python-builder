FROM python:latest

RUN curl -sL https://sentry.io/get-cli/ | bash

RUN base_url_machine=https://github.com/docker/machine/releases/download/v0.16.0 && \
    curl -L $base_url_machine/docker-machine-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-machine  && \
    chmod +x /usr/local/bin/docker-machine

RUN base_url_compose=https://github.com/docker/compose/releases/download/1.24.1  && \
    curl -L $base_url_compose/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose  && \
    chmod +x /usr/local/bin/docker-compose
