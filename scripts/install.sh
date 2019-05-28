#!/bin/bash
echo "-----------------GERMAN DOWNLOADSERVER----------- "
sed -i 's/http:\/\/us./http:\/\/de./g' /etc/apt/sources.list

echo "---------------------------------------------------- "
echo "------------ INSTALL MAJOR DEPENDENCIES ------------ "
apt-get update && apt-get install -y unzip vim
echo "------------ UPTDATE COMPLETE ------------ "
./scripts/install_ssh.sh
