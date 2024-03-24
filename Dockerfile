FROM ubuntu:latest

COPY ./rws.config.toml .
COPY ./rws /usr/bin/rws
RUN chmod 777 ./rws.config.toml
RUN chmod 777 /usr/bin/rws

EXPOSE 7878

CMD [ "rws" ]