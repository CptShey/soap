#!/bin/bash

#Update hostname



sed -i -E "s/HOST = [^)]+/HOST = 0.0.0.0 /g" /opt/oracle/product/18c/dbhomeXE/network/admin/listener.ora
sed -i -E "s/HOST = [^)]+/HOST = 0.0.0.0 /g" /opt/oracle/product/18c/dbhomeXE/network/admin/tnsnames.ora



/etc/init.d/oracle-xe-18c start

touch /debuglogs/lsnrctl.log
lsnrctl status >> /debuglogs/lsnrctl.log
#maybe later -> /etc/init.d/ssh start


while [ "$END" == '' ]; do
	sleep 1
	trap "/etc/init.d/oracle-xe stop && END=1" INT TERM
done
;;
