#!/bin/sh
cd files

echo "========================================================================="
echo "=                          DOWNLOAD APEX                                ="
echo "========================================================================="
curl -O --progress-bar http://digitalreaktor.ddns.net/odbs/apex.zip
echo "========================================================================="
echo "=                          DOWNLOAD ORACLE XE 18c                       ="
echo "========================================================================="
curl -O --progress-bar http://digitalreaktor.ddns.net/odbs/oracle-database-xe-18c-1.0-1.x86_64.rpm

echo "========================================================================="
echo "=                         CREATE DEBUGLOGS FOLER                        ="
echo "========================================================================="
mkdir /debuglogs
