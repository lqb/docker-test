FROM lqb10/ubuntu-bootstrap:trusty-amd64

ARG DIST="ubuntu"
ARG CODENAME="trusty"
ARG ARCH="amd64"

MAINTAINER lqb <lqb@gmx.net>

COPY sources.list /etc/apt/sources.list
RUN sed -i "s|\$CODENAME|${CODENAME}|g" /etc/apt/sources.list \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential devscripts 


