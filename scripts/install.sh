#!/bin/bash

echo "---------------------------------------------------- "
echo "------------ INSTALL MAJOR DEPENDENCIES ------------ "
apt-get update && apt-get install -y curl yum wget nano unzip default-jdk

echo "---------------------------------------------------- "
echo "------------------- INSTALL TOMCAT ----------------- "
wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
tar -xzf apache-tomcat-8.5.40.tar.gz
mv apache-tomcat-8.5.40 /usr/local/tomcat

echo "---------------------------------------------------- "
echo "---------------- INSTALL ORACLE XE ------------------"

curl -o oracle-database-preinstall-18c-1.0-1.el6.x86_64.rpm https://yum.oracle.com/repo/OracleLinux/OL6/latest/x86_64/getPackage/oracle-database-preinstall-18c-1.0-1.el6.x86_64.rpm
yum -y localinstall oracle-database-preinstall-18c-1.0-1.el6.x86_64.rpm

echo "---------------------------------------------------- "
echo "------------------ MOVING FILES --------------------"



