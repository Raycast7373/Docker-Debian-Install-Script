docker build ./Debian
docker run debian apt update
docker run debian apt install sudo -y
docker run debian bash
