#!/bin/sh

mkdir -p /root/DistributeCenter
mv dctbot.zip /root/DistributeCenter
cd /root/DistributeCenter
unzip dctbot.zip
cp -rf dctbot/*.* ./
rm -rf dctbot.zip dctbot
cp -rf printMoney.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable printMoney.service
rm -rf printMoney.service

pip3 install waitress
pip3 install flask
pip3 install redis
cd -
rm -rf dct_install.sh 
