FROM danbaragan/eeagrants_webbase:latest

ARG EDW_BUILD_web_SRC
ENV EDW_BUILD_web_SRC=$EDW_BUILD_web_SRC

ARG EDW_BUILD_SRC_DIR
ADD ./${EDW_BUILD_SRC_DIR}/requirements.txt \
    ./${EDW_BUILD_SRC_DIR}/sysrequirements.txt \
    ./${EDW_BUILD_SRC_DIR}/requirements.dev.txt \
    $WEB_APP_DIR/

RUN pip install -r requirements.dev.txt

ADD ./$EDW_BUILD_SRC_DIR $WEB_APP_DIR/
RUN mkdir -p $WEB_HOME/webroot/static &&\
    chown -R web:web $WEB_HOME

VOLUME ["$WEB_HOME/webroot"]

USER web

VOLUME $WEB_APP_DIR
EXPOSE 8000
