
echo "---------------------------------------------------- "
echo "------------ INSTALL MAJOR DEPENDENCIES ------------ "
apt-get update && apt-get install -y curl yum wget nano unzip default-jdk
echo "------------ UPTDATE COMPLETE ------------ "


./scripts/install_ssh.sh
