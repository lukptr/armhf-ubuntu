FROM lukptr/armhf-ubuntu_core:15.10
MAINTAINER lukptr@yahoo.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade && apt-get install -y wget nano ca-certificates

RUN apt-get autoremove && apt-get clean

RUN rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]