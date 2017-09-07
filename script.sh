#!/bin/bash

wget https://releases.hashicorp.com/terraform/0.10.4/terraform_0.10.4_linux_amd64.zip -O /tmp/terraform.zip
mkdir /tmp/terraform
unzip /tmp/terraform.zip -d /tmp/terraform
chmod 755 -R /tmp/terraform
mv /tmp/terraform/* /usr/local/bin/
rm -f /tmp/terraform.zip
apt-get update
apt-get install -y unzip python-pip python-dev python-virtualenv libffi-dev libcurl4-nss-dev libssl-dev apt-transport-https ca-certificates libevent-dev libsasl2-modules netcat-openbsd
pip install --upgrade cffi ansible boto six markupsafe pycrypto

wget http://repos.mesosphere.com/debian/pool/main/m/mesos/mesos_1.3.0-2.0.3.debian8_amd64.deb -O /tmp/mesos.deb
wget http://ftp.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u6_amd64.deb -O /tmp/libssl1.0.0.deb
dpkg -i /tmp/libssl1.0.0.deb
dpkg -i /tmp/mesos.deb
rm -f /tmp/mesos.deb /tmp/libssl1.0.0.deb
