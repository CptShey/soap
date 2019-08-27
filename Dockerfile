FROM centos:latest

MAINTAINER CptShey <cptshey@icloud.com>

EXPOSE 22 1521 5500 8080

ARG PASSWORD
ENV PASSWORD ${PASSWORD:-start1234}

ARG APEXADMINPWD
ENV APEXADMINPWD ${APEXADMINPWD:-Start123!}



COPY scripts /scripts

ENV ORACLE_DOCKER_INSTALL=TRUE
ENV ORACLE_HOME /opt/oracle/product/18c/dbhomeXE
ENV PATH $ORACLE_HOME/bin:$PATH
ENV ORACLE_SID=XE

CMD chmod -R +x /scripts/.*

RUN /scripts/dload.sh
RUN /scripts/install_oraclexe18c.sh
RUN /scripts/install_apex.sh
RUN /scripts/cleanup.sh


ADD /scripts/start.sh /
ENTRYPOINT ["/start.sh"]
