FROM ubuntu:16.04
RUN apt-get update && \
  apt-get -y install git && \
  cd /opt && \
  git clone https://gitlab.eurecom.fr/oai/openair-cn.git
  
RUN openair-cn/SCRIPTS/build_hss -i -F
