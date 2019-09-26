sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common python-software-properties -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y

mkdir Debian
cd Debian
wget https://github.com/debuerreotype/docker-debian-artifacts/raw/74e1a3304401c2eb9c6624ae1056d0a438c15189/buster/rootfs.tar.xz
wget https://raw.githubusercontent.com/debuerreotype/docker-debian-artifacts/74e1a3304401c2eb9c6624ae1056d0a438c15189/buster/Dockerfile
cd ../
sudo docker build ./Debian
sudo bash ./OpenDebianTerminal.sh
