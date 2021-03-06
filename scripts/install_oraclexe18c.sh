#!/bin/bash

echo "========================================================================="
echo "=                      INSTALL MAJOR DEPENDENCIES                       ="
echo "========================================================================="
curl -o oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm https://yum.oracle.com/repo/OracleLinux/OL7/latest/x86_64/getPackage/oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm
 yum -y localinstall oracle-database-preinstall-18c-1.0-1.el7.x86_64.rpm
echo "========================================================================="
echo "=                      INSTALL ORACLE XE 18c                            ="
echo "========================================================================="
chmod +x files/oracle-database-18c-1.0-1.x86_64.rpm
yum -y localinstall files/oracle-database-xe-18c-1.0-1.x86_64.rpm

echo "========================================================================="
echo "=                        SETUP ORACLE XE 18c                            ="
echo "========================================================================="
printf $PASSWORD\\n$PASSWORD\\n | /etc/init.d/oracle-xe-18c configure

echo "========================================================================="
echo "=                        ENABLE EM ACCESS                            ="
echo "========================================================================="
sqlplus sys/$PASSWORD as sysdba<<EOF
startup;
EXEC DBMS_XDB.SETLISTENERLOCALACCESS(FALSE);
exit;
EOF

echo "========================================================================="
echo "=                        CREATE USER "STUDENT"                            ="
echo "========================================================================="

sqlplus sys/$PASSWORD as sysdba<<EOF
ALTER SESSION SET CONTAINER=XEPDB1;
CREATE USER student IDENTIFIED BY th2019;
GRANT ALL PRIVILEGES TO student;
commit;
exit;
EOF
