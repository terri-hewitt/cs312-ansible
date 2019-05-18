#!/bin/bash

ssh-keygen -t rsa
echo -ne '\n'
echo -ne '\n'
echo -ne '\n'
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.22
echo 'yes'
echo 'password'
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.23
echo 'yes'
echo 'password'
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.24
echo 'yes'
echo 'password'
ssh-copy-id -i ~/ssh/id_rsa root@192.168.1.25
echo 'yes'
echo 'password'
