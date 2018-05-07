#!/bin/bash

# Configure Docker to be ready in the system, as this dns is intended to register Docker containers.
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
echo "Configuring Docker repos..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the whole registry
apt-get update

# To disable entries on a multiline command, this backtick technique was used
# https://stackoverflow.com/a/12797512
#
# Expensive, yes, but did the work. In General, DO NOT DO THAT!!! I have some special
# blessing, you know!
apt-get install -y \
  apt-transport-https \
  dnsmasq \
  ca-certificates \
  curl \
  software-properties-common

# Install Docker after all requirements are in place.
apt-get install -y \
  docker-ce
