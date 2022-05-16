FROM alpine

LABEL maintainer="Nine Land Mastodon Administrator <mastodon-long@nine.land>"
LABEL org.opencontainers.image.description="Squid alpine container image."

RUN apk add --no-cache squid curl tzdata

ENV TZ=Asia/Shanghai

ENTRYPOINT ["/usr/sbin/squid"]

CMD ["-f", "/etc/squid/squid.conf", "-NYC"]