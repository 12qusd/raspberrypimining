#!/bin/bash
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
else
git clone https://github.com/lucasjones/cpuminer-multi.git
cd cpuminer-multi
apt-get update -y
apt-get install autoconf -y
apt-get install libcurl4-openssl-dev -y
apt-get install libjansson-dev -y
apt-get install openssl -y
apt-get install libssl-dev -y
./autogen.sh #
./configure
make

fi
