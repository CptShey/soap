#!/bin/bash

echo "---------------------------------------------------- "
echo "------------ INSTALL SSH SERVER -------------------- "
apt update && apt install -y openssh-server
mkdir /var/run/sshd
echo 'root:Start123' | chpasswd
sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
echo "export VISIBLE=now" >> /etc/profile
