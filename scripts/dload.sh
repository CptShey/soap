#!/bin/sh
mkdir files
cd files

echo "========================================================================="
echo "=                          DOWNLOAD APEX                                ="
echo "========================================================================="
curl -O --progress-bar https://hydracore.de/files/public-docs/apex.zip
echo "========================================================================="
echo "=                          DOWNLOAD ORACLE XE 18c                       ="
echo "========================================================================="
curl -O --progress-bar https://hydracore.de/files/public-docs/oracle-database-xe-18c-1.0-1.x86_64.rpm

echo "========================================================================="
echo "=                         CREATE DEBUGLOGS FOLER                        ="
echo "========================================================================="
mkdir /debuglogs
