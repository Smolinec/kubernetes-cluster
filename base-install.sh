#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt-get install docker.io
sudo systemctl enable docker
sudo systemctl status docker
sudo systemctl start docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" -y
sudo apt-get install kubeadm kubelet kubectl
sudo apt-mark hold kubeadm kubelet kubectl
kubeadm version