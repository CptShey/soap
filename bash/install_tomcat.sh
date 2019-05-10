#!/bin/bash

cd /src
tar -xzf apache-tomcat-8.0.11.tar.gz
mv /src/apache-tomcat-8.0.11 /tomcat
sed -i -e 's/password="secret"/password="'$PASSWORD'"/g' /bash/tomcat-users.xml
mv /bash/tomcat-users.xml /tomcat/conf
mv /bash/tomcat_com /etc/init.d/tomcat
chmod 755 /etc/init.d/tomcat
update-rc.d tomcat defaults  80 01
