FROM debian:jessie
MAINTAINER martin@martingansler.de

ENV DEBIAN_FRONTEND noninteractive

RUN	apt-get update \
	&& apt-get install --yes --no-install-recommends mercurial ca-certificates \
    	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
WORKDIR /usr/lib/
RUN hg clone https://code.google.com/p/prosody-modules/
WORKDIR /usr/lib/prosody-modules/
RUN hg update -r e72f9eac51c8

VOLUME ["/usr/lib/prosody-modules"]
