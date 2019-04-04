FROM alpine:latest

MAINTAINER Nobuyuki Matsui <nobuyuki.matsui@gmail.com>

ARG VERSION=4.5.0.6-r3
RUN apk update && \
    apk add --no-cache coturn=$VERSION

ENTRYPOINT ["/usr/bin/turnserver"]
CMD ["-v"]
