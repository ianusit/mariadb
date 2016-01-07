FROM alpine:3.2
MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update ca-certificates tzdata mysql mysql-client && cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime && echo "Europe/Berlin" > /etc/timezone && rm -rf /var/cache/apk/* && mkdir -p /var/lib/mysql && chown -R mysql:mysql /var/lib/mysql

CMD ["mysqld_safe"]
