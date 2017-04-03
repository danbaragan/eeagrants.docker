FROM python:3.6-slim

# roles:
#   front - publishes ports to the world; this depends on run/docker-compose though...
#   cron - runs cron daemon
LABEL maintainer="daniel.baragan@eaudeweb.ro" \
      roles="front" \
      name="web"

RUN apt-get -y update &&\
    apt-get -y --no-install-recommends install \
    vim \
    sudo \
    netcat-traditional \
    git \
    libmariadb-client-lgpl-dev \
    gcc \
    libc-dev-bin \
    libc6-dev \
    make \
    patch \
    cron \
    curl \
    sqlite3 \
    ;

RUN adduser --disabled-password --gecos '' --shell /bin/false web &&\
    adduser web sudo &&\
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENV WEB_HOME=/home/web \
    WEB_APP_DIR=/home/web/eeagrants \
    PATH=/home/web/bin:$PATH \
    USER=web

RUN mkdir -p $WEB_APP_DIR &&\
    mkdir -p $WEB_HOME/bin &&\
    mkdir -p $WEB_HOME/build &&\
    chown -R web:web $WEB_HOME

VOLUME ["$WEB_HOME/build"]

WORKDIR $WEB_APP_DIR

