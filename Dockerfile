FROM ubuntu:18.04

MAINTAINER CptShey <cptshey@icloud.com>

EXPOSE 8080

COPY scripts /scripts
RUN /scripts/install.sh

CMD ./usr/local/tomcat/bin/catalina.sh run
