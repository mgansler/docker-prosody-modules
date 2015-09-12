FROM debian:jessie
MAINTAINER martin@martingansler.de

ENV DEBIAN_FRONTEND=noninteractive \
    REVISON=032b209bb8ff

RUN	apt-get update \
	&& apt-get install --yes --no-install-recommends mercurial ca-certificates \
    	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
WORKDIR /usr/lib/
RUN hg clone https://hg.prosody.im/prosody-modules
WORKDIR /usr/lib/prosody-modules/
RUN hg update -r $REVISON 

VOLUME ["/usr/lib/prosody-modules"]
