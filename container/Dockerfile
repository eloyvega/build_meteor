FROM node:4.8.4

EXPOSE 3000

ENV USER app
ENV APP_HOME /opt/$USER
ENV ROOT_URL http://localhost
ENV PORT 3000

WORKDIR $APP_HOME

ADD srv.tar.gz $APP_HOME
WORKDIR $APP_HOME/bundle
RUN (cd programs/server && npm install)

RUN useradd -d $APP_HOME $USER
RUN chown -R $USER:$USER $APP_HOME

USER $USER

ENTRYPOINT ["node","main.js"]
