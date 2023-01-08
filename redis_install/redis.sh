#!/bin/sh

yum install redis -y
tar zxvf redis-5.0.3.tar.gz
cd redis-5.0.3/
make install -j
cd -
cp redis.conf redis-sentinel.conf /etc/
chmod +x redis.conf
cp redis.service /lib/systemd/system/
cp /usr/local/bin/redis-server /usr/bin
systemctl enable redis.service
mkdir /var/lib/redis
service redis restart