#!/bin/bash


curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.gs/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/

## CHEKWUBE ##

#NEW COMMAND 
#1. download the kops binary and move it directly to /usr/local/bin/ with the correct naming:

sudo curl -Lo /usr/local/bin/kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
 
#2. Make kops Executable:

sudo chmod +x /usr/local/bin/kops

#3. Verify kops Installation:

ls -l /usr/local/bin/kops

#4. Test KOPS command

#kops

####DEPENDENCIES #######

#INSTALL PIP 

#Ensure your system has python 
#python --version

#then:
sudo apt update
sudo apt install python3-pip

#Install AWS CLI:

sudo pip install awscli

#Install kubectl:
#For kubectl, you can use curl to download the binary and then move it to a directory in your PATH.

sudo apt update
sudo apt install curl
curl -LO https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
