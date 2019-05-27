#!/bin/bash

echo "---------------------------------------------------- "
echo "------------ INSTALL MAJOR DEPENDENCIES ------------ "
apt update && apt install -y wget nano unzip default-jdk

echo "---------------------------------------------------- "
echo "------------------- INSTALL TOMCAT ----------------- "
wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
tar -xzf apache-tomcat-8.5.40.tar.gz
mv apache-tomcat-8.5.40 /usr/local/tomcat

echo "---------------------------------------------------- "
echo "------------------ MOVING FILES --------------------"
