# This docker file is generated for building my resume using pdftex
# @Author: Piyus Gupta
# @Date  : Aug 19th 2018

FROM centos:7

MAINTAINER piyusgupta01@gmail.com

RUN yum install -y pyliblzma && \
    yum install -y epel-release && \
    yum install -y texlive-latex && \
    yum clean all && rm -rf /var/cache/yum

ADD src /

RUN chmod +x builder.sh

CMD /builder.sh
