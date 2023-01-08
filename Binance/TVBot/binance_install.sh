#!/bin/sh

mkdir -p /home/python1/BinanceTradingBot
mv bnbot.zip /home/python1/BinanceTradingBot
cd /home/python1/BinanceTradingBot
unzip bnbot.zip
cp -rf bnbot/*.* ./
cp -rf bnbot/config.ini ./
rm -rf bnbot.zip bnbot
tar zxvf ccxt.tar.gz
rm -rf ccxt.tar.gz
cp -rf printMoney1.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable printMoney1.service
rm -rf printMoney1.service

