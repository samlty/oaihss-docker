FROM ubuntu:16.04
RUN apt-get update && \
  apt-get -y install git && \
  cd /opt && \
  git clone https://gitlab.eurecom.fr/samlty/openair-cn.git
  
RUN cd /opt/openair-cn/SCRIPTS && ./build_hss -i -F
