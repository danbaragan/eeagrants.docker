FROM danbaragan/eeagrants_webbase:latest

# node js tools
RUN curl --silent --location https://deb.nodesource.com/setup_7.x | bash -
RUN     apt-get -y --no-install-recommends install \
    nodejs \
    bzip2 \
    ;

ADD build/webpack/webpack_entrypoint.sh \
    $WEB_HOME/bin

ARG EDW_BUILD_webpack_SRC
ENV EDW_BUILD_webpack_SRC=$EDW_BUILD_webpack_SRC

ARG EDW_BUILD_SRC_DIR
ADD ./${EDW_BUILD_SRC_DIR}/webpack.config.js \
    ./${EDW_BUILD_SRC_DIR}/.babelrc \
    ./${EDW_BUILD_SRC_DIR}/package.json \
    $WEB_APP_DIR/

RUN chown -R web:web $WEB_HOME

USER web

ARG EDW_BUILD_webpack_NODE_ENV=production
ENV NODE_ENV=$EDW_BUILD_webpack_NODE_ENV

RUN npm install


EXPOSE 2992
