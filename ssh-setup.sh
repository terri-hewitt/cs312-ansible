#!/bin/bash

ssh-keygen -t rsa
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.22
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.23
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.24
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.25

ansible-playbook webserver.yaml ./hosts.ini
curl 192.168.1.22
curl 192.168.1.23
curl 192.168.1.24
curl 192.168.1.25
