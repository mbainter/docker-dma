FROM alpine:3
LABEL authors="Mark Bainter <mbainter@gmail.com>"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories
RUN set -ex; \
    apk update; \
    apk --no-cache add --update dma


EXPOSE 25/tcp
VOLUME /var/spool/dma

CMD [ "dma", "-D" ]
