FROM alpine:latest

RUN sed -i 's/https/http/' /etc/apk/repositories

RUN apk add --no-cache stunnel redis gettext
COPY ./stunnel.conf.template /etc/stunnel/stunnel.conf.template
COPY ./docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT [ "docker-entrypoint.sh" ]
