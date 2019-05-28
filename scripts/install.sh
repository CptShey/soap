#!/bin/bash
echo "---------------------------------------------------- "
echo "------------ INSTALL MAJOR DEPENDENCIES ------------ "
apt-get update && apt-get install -y unzip vim
echo "------------ UPTDATE COMPLETE ------------ "
./scripts/install_ssh.sh
