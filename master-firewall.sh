#!/bin/bash
sudo ufw default deny incoming
sudo ufw allow from 194.163.184.120
sudo ufw allow from 194.163.184.129
sudo ufw allow from 194.163.184.118
sudo ufw allow from 194.163.168.31
sudo ufw allow from 173.249.12.240
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 6443
sudo ufw enable
sudo ufw status
