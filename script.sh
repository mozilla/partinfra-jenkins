#!/bin/bash

wget https://releases.hashicorp.com/terraform/0.6.15/terraform_0.6.15_linux_amd64.zip -O /tmp/terraform.zip
mkdir /tmp/terraform
unzip /tmp/terraform.zip -d /tmp/terraform
chmod 755 -R /tmp/terraform
mv /tmp/terraform/* /usr/local/bin/
apt-get update
apt-get install -y unzip python-pip python-dev python-virtualenv
pip install ansible
