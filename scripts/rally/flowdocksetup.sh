#!/bin/bash

# redis, postgres, mongo --------------------------------------------------
sudo apt-get update
sudo apt-get -y -q install gawk libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config libffi-dev libxml2-dev libxslt-dev libxml2 git curl
sudo apt-get install -y redis-server
sudo apt-get install -y mongodb
sudo apt-get install -y memcached
sudo apt-get -y -q install postgresql libpq-dev postgresql-contrib
sudo apt-get install -y linux-headers-$(uname -r)

# java -------------------------------------------------------------------
sudo apt-get install -y openjdk-7-jre-headless

#settings twiddling
sudo sed -i 's/-p 11211/-p 11212/' /etc/memcached.conf
