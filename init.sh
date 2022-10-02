#!/bin/bash

# - environment setup

# install specific python version to make sure all the work env for various server are the same.
sudo add-apt-repository ppa:deadsnakes/ppa -y # repo that contains different versions of python
sudo apt-get update # update package manager
sudo apt install python3.8 -y # when code is dependent on version, good practice to install to ensure no conflicts
sudo apt install python3.8-distutils -y

# install awscli
sudo apt  install awscli -y # in case code is not run on aws

# Create a virtual environment for specific python3.8 version
sudo apt install python3-virtualenv -y
virtualenv --python="/usr/bin/python3.8" sandbox  
source sandbox/bin/activate 

# Install dependencies
pip install -r requirements.txt

deactivate # deactivate your sandbox

chmod a+x run.sh # make run.sh executable

mkdir log # create log directory if it doesn't exist

# -- End of Program Code -- #