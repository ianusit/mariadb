FROM alpine:3.3
MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates tzdata mysql mysql-client &&\
    mkdir -p /var/lib/mysql &&\
    chown -R mysql:mysql /var/lib/mysql &&\
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime &&\
    echo "Europe/Berlin" > /etc/timezone &&\
    rm -rf /var/cache/apk/*

CMD ["mysqld_safe"]
