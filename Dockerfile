# Basic install of esniper 
#
# Currently installs esniper 2-33-0
# Version 0.2 Mar-13-2017

FROM centos:latest
MAINTAINER Felix G. version: 0.1

RUN yum update -y && \
    yum install -y gcc libcurl-devel make && \
    yum clean all && \
    curl https://kent.dl.sourceforge.net/project/esniper/esniper/2.33.0/esniper-2-33-0.tgz -o /tmp/esniper.tgz && \
    cd /tmp && tar zxf /tmp/esniper.tgz && cd /tmp/esniper-2-33-0; ./configure; make; make install && \
    mkdir -p /esniper/logs

COPY .esniper / 
COPY entrypoint.sh /

ENTRYPOINT "./entrypoint.sh"
