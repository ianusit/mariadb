FROM alpine:3.3

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update mysql &&\
    mkdir -p /var/lib/mysql &&\
    chown -R mysql:mysql /var/lib/mysql &&\
    rm -rf /var/cache/apk/*

USER mysql

CMD ["mysqld_safe"]
