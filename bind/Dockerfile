FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bind9

COPY named.conf /etc/bind/named.conf
COPY db.mysite1.loc /etc/bind/db.mysite1.loc
COPY db.192.168.1 /etc/bind/db.192.168.1

CMD ["named", "-f"]

