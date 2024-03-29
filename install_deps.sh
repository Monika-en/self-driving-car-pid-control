#!/bin/sh
apt-get update
apt-get -y install zlib1g-dev libssl-dev gcc g++ make cmake libuv1-dev git
git clone https://github.com/uWebSockets/uWebSockets 
cd uWebSockets
git checkout e94b6e1
mkdir build
cd build
cmake ..
make 
make install
cd ..
cd ..
ln -s /usr/lib64/libuWS.so /usr/lib/libuWS.so
rm -r uWebSockets