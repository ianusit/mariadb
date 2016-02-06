FROM alpine:3.3

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update mysql mysql-client &&\
    mkdir -p /var/lib/mysql &&\
    chown -R mysql:mysql /var/lib/mysql &&\
    rm -rf /var/cache/apk/*

CMD ["mysqld_safe"]
