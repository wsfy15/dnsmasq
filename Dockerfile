FROM debian:stretch
MAINTAINER wsf

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get upgrade &&\
        apt-get install -q -y dnsmasq
COPY address.conf /etc/dnsmasq.d/address.conf
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53 53/udp
#CMD ["sh", "-c", "service dnsmasq restart"]
