#!/bin/bash

wget https://releases.hashicorp.com/terraform/0.7.11/terraform_0.7.11_linux_amd64.zip -O /tmp/terraform.zip
mkdir /tmp/terraform
unzip /tmp/terraform.zip -d /tmp/terraform
chmod 755 -R /tmp/terraform
mv /tmp/terraform/* /usr/local/bin/
rm -f /tmp/terraform.zip
apt-get update
apt-get install -y unzip python-pip python-dev python-virtualenv libffi-dev libssl-dev apt-transport-https ca-certificates libevent-dev libsasl2-modules
pip install --upgrade cffi ansible boto six markupsafe

wget http://repos.mesosphere.com/debian/pool/main/m/mesos/mesos_1.0.1-2.0.93.debian81_amd64.deb -O /tmp/mesos.deb
dpkg -i /tmp/mesos.deb
