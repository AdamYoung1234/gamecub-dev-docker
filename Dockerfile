FROM debian

WORKDIR /preparation

COPY install.sh install.sh
COPY dkp_install.sh dkp_install.sh
RUN bash install.sh

WORKDIR /
RUN rm -r preparation
