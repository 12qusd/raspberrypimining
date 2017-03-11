#!/bin/bash
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
else
apt-get update -y
apt-get install git -y
git clone https://github.com/lucasjones/cpuminer-multi.git
cd cpuminer-multi
apt-get install autoconf -y
apt-get install libcurl4-openssl-dev -y
apt-get install libjansson-dev -y
apt-get install openssl -y
apt-get install libssl-dev -y
./autogen.sh #
./configure
make
printf "To use type ./minerd with any options you want while in the cpuminer-multi folder\n"
printf "For example ./minerd -a cryptonight -o stratum+tcp://fcn-xmr.pool.minergate.com:45590 -u joebob@saintly.com -p x -t 4"

fi
