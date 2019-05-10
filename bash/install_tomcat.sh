#!/bin/bash

cd /src
tar -xzf apache-tomcat-9.0.19.tar
mv /src/apache-tomcat-9.0.19 /tomcat
sed -i -e 's/password="secret"/password="'$PASSWORD'"/g' /bash/tomcat-users.xml
mv /bash/tomcat-users.xml /tomcat/conf
mv /bash/tomcat_com /etc/init.d/tomcat
chmod 755 /etc/init.d/tomcat
update-rc.d tomcat defaults  80 01
