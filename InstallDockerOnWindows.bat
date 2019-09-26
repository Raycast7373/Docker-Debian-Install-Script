wget -o setupdocker.msi https://download.docker.com/win/stable/InstallDocker.msi
.\setupdocker.msi

mkdir Debian
cd Debian
wget -o rootfs.tar.xz https://github.com/debuerreotype/docker-debian-artifacts/raw/74e1a3304401c2eb9c6624ae1056d0a438c15189/buster/rootfs.tar.xz
wget -o Dockerfile https://raw.githubusercontent.com/debuerreotype/docker-debian-artifacts/74e1a3304401c2eb9c6624ae1056d0a438c15189/buster/Dockerfile
cd ../

