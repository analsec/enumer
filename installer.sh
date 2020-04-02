#!/bin/bash


apt-get update
apt-get install apt-utils nmap python3-pip ruby-dev git curl wget p7zip-full zip -y

apt-get install libcurl4-openssl-dev libssl-dev -y
pip3 install wfuzz

apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev -y
gem install nokogiri

gem install wpscan

git clone https://github.com/maurosoria/dirsearch

git clone https://github.com/s0md3v/Photon
pip3 install -r Photon/requirements.txt

apt-get install git gcc make libpcap-dev -y
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make -j
make install
cd ..

wget https://github.com/OWASP/Amass/releases/download/v3.5.4/amass_v3.5.4_linux_amd64.zip
unzip amass_v3.5.4_linux_amd64.zip
rm -rf amass_v3.5.4_linux_amd64.zip
mv amass_v3.5.4_linux_amd64 amass

git clone https://github.com/ShawnDEvans/smbmap
pip3 install -r smbmap/requirements.txt

git clone https://github.com/Tuhinshubhra/CMSeeK
pip3 install -r CMSeeK/requirements.txt

git clone https://github.com/chenjj/CORScanner
pip3 install -r CORScanner/requirements.txt

git clone https://github.com/rezasp/joomscan

wget https://github.com/C-Sto/recursebuster/releases/download/v1.6.11/recursebuster_elf
chmod +x recursebuster_elf

wget https://github.com/OJ/gobuster/releases/download/v3.0.1/gobuster-linux-amd64.7z
7z e gobuster-linux-amd64.7z
chmod +x gobuster
rm -rf gobuster-linux-amd64.7z gobuster-linux-amd64

