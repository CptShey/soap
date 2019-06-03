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
echo "========================================================================="
echo "=                        SET TNS LISTENER TO HOSTNAME                  ="
echo "========================================================================="

sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /opt/oracle/product/18c/dbhomeXE/network/admin/listener.ora
sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora

echo "========================================================================="
echo "=                        DEBUG : TNS BEFORE RESTART                      ="
echo "========================================================================="
cat /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora
cat /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora

echo "Before RESTART ----------------------------" >> /debuglogs/log.log

touch /debuglogs/log.log
lsnrctl status >> /debuglogs/log.log
/etc/init.d/oracle-xe-18c stop
echo "========================================================================="
echo "=                        RESTART ORACLE XE                              ="
echo "========================================================================="

/etc/init.d/oracle-xe-18c start
lsnrctl status
echo "========================================================================="
echo "=                        DEBUG : TNS AFTER RESTART                      ="
echo "========================================================================="
cat /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora
cat /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora
echo "After RESTART ----------------------------" >> /debuglogs/log.log

lsnrctl status >> /debuglogs/log.log

echo "========================================================================="
echo "=                         INIT APEX ADMIN PWD                           ="
echo "========================================================================="
cd /scripts
sqlplus sys/$PASSWORD@//localhost/XEPDB1 as sysdba @apexinitadmin.sql $APEXADMINPWD
