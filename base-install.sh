#!/bin/bash
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -yq
sudo DEBIAN_FRONTEND=noninteractive apt-get install docker.io -yq
sudo systemctl enable docker
#sudo systemctl status docker
sudo systemctl start docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main" -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install kubeadm kubelet kubectl -yq
sudo apt-mark hold kubeadm kubelet kubectl
kubeadm version
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo DEBIAN_FRONTEND=noninteractive apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install helm -yq
