FROM debian:jessie-slim

LABEL maintainer="staslapshin88@gmail.com"

RUN which ssh-agent || ( apt-get update -y && apt-get install openssh-client -y )
RUN mkdir -p ~/.ssh

ADD start.sh /

ENTRYPOINT ["./start.sh"]
