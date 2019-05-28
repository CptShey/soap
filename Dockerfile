FROM ubuntu:18.04

MAINTAINER CptShey <cptshey@icloud.com>

EXPOSE 22 8080
COPY scripts /scripts
CMD sh /scripts/install.sh
