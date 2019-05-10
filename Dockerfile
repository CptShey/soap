#FROM 
MAINTAINER CptShey <cpt.shey@icloud.com>


ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin:$CATALINA_HOME/scripts


# Install Tomcat
#RUN wget http://192.168.11.109/sw/apache/tomcat/apache-tomcat-8.0.36.tar.gz && \
#RUN wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz && \
RUN wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.38/bin/apache-tomcat-8.0.38.tar.gz && \
        tar -xvf apache-tomcat-8.0.38.tar.gz && \
        rm apache-tomcat*.tar.gz && \
        mv apache-tomcat* ${CATALINA_HOME}
COPY server.xml ${CATALINA_HOME}/conf/server.xml
RUN chmod +x ${CATALINA_HOME}/bin/*sh

# Environmental variables.
ENV ADMIN_PASS "admin"
ENV CERT_PASS "start1234"

# Expose Tomcat ports
EXPOSE 8080 8443




