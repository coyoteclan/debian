FROM debian:bookworm-slim

MAINTAINER Kazam, <kazam0180@discord>

RUN apt update && apt upgrade -y \
    && apt install -y curl ca-certificates openssl tar bash \
    && adduser --disabled-password --home /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
