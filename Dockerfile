FROM centos:latest

MAINTAINER CptShey <cptshey@icloud.com>

EXPOSE 1521 5500 8080

ARG PASSWORD
ENV PASSWORD ${PASSWORD:-start1234}

COPY files /files
COPY scripts /scripts

ENV ORACLE_DOCKER_INSTALL=TRUE
ENV ORACLE_HOME /opt/oracle/product/18c/dbhomeXE
ENV PATH $ORACLE_HOME/bin:$PATH
ENV ORACLE_SID=XE

RUN /scripts/dload.sh
RUN /scripts/install_oraclexe18c.sh
RUN /scripts/install_apex.sh

CMD /scripts/start.sh
ENTRYPOINT /bin/bash
