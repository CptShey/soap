FROM ubuntu:18.04

MAINTAINER CptShey <cptshey@icloud.com>

EXPOSE 8080

CMD mkdir /scripts
COPY scripts /scripts

CMD sh /scripts/install.sh
