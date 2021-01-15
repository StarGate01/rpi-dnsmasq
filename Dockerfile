FROM ubuntu:18.04

RUN apt-get update && \
    apt-get -y install dnsmasq && \
    rm -rf /var/lib/apt/lists/*

CMD dnsmasq -k

EXPOSE 53/udp