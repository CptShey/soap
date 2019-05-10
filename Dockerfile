FROM ubuntu:18.04
MAINTAINER CptShey <cpt.shey@icloud.com>
ARG PASSWORD
ENV PASSWORD ${PASSWORD:-secret}
EXPOSE 8080
COPY bash /bash
RUN /bash/install_tomcat.sh
