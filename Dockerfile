# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "cpt.shey@icloud.com" 

# Admin & User
ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/

# Copy to images tomcat path 
ADD web.xml /usr/local/tomcat/conf/ 
ADD obclient.properties /etc/ 
ADD WebClient.properties /etc/ 
ADD yourwarfile.war /usr/local/tomcat/webapps/ 



