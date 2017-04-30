#!/bin/bash
if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
else
apt update -y
git --version || apt-get install git -y
git clone https://github.com/lucasjones/cpuminer-multi.git
cd cpuminer-multi
apt install autoconf libcurl4-openssl-dev libjansson-dev openssl libssl-dev -y
./autogen.sh #
./configure
make
printf "To use type ./minerd with any options you want while in the cpuminer-multi folder\n"
printf "For example ./minerd -a cryptonight -o stratum+tcp://xmr-usa.dwarfpool.com:8050 -u 45MfScNnyb3KwanUH4feiDExdydQ3cACKPpJuxmtoVnY25Khw7nBeZmXhtoWj4Pfi4PjdxkFWpaW72PR3Jy1Xr8R6HFyk9M -p x -t 4"

fi
