FROM alpine:3

RUN set -x && \
    apk --no-cache update && \
    apk add --no-cache rsyslog rsyslog-elasticsearch

RUN set -x && \
    mkdir -p /logs/rsyslog

COPY rsyslog.conf /etc/rsyslog.conf

EXPOSE 514

CMD ["/usr/sbin/rsyslogd", "-n"]
