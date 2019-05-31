#!/bin/bash
echo "========================================================================="
echo "=                          PREPARE APEX FILES                           ="
echo "========================================================================="
cd /files
unzip apex.zip
mv /files/apex /tmp
echo "========================================================================="
echo "=                         INSTALL & SETUP APEX                          ="
echo "========================================================================="
cd /tmp/apex
sqlplus sys/$PASSWORD as sysdba<<EOF
startup;
ALTER USER ANONYMOUS ACCOUNT UNLOCK;
ALTER SESSION SET CONTAINER=XEPDB1;
@apexins.sql sysaux sysaux temp /i/
@apex_epg_config.sql /tmp
EXEC DBMS_XDB.sethttpport(8080);
exit;
EOF
