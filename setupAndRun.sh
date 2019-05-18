#!/bin/bash

yum install -y ansible

ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa root@192.168.1.20
ssh-copy-id -i ~/.ssh/id_rsa root@192.168.1.21
ssh-copy-id -i ~/.ssh/id_rsa root@192.168.1.22
ssh-copy-id -i ~/.ssh/id_rsa root@192.168.1.23

ansible-playbook webserver.yaml ./hosts.ini
curl 192.168.1.20
curl 192.168.1.21
curl 192.168.1.22
curl 192.168.1.23
