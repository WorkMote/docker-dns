#!/bin/bash

# Force dnsmasq service to read .conf files as set insite /etc/dnsmasq.d/ folder
echo "conf-dir=/etc/dnsmasq.d/,*.conf" >> /etc/dnsmasq.conf

# Copy basic configs for dnsmasq server
mv $(cd `dirname $0` && pwd)/base-dnsmasq.conf /etc/dnsmasq.d/00-base-dnsmasq.conf

# Create an empty config file to register Docker containers ips
touch /etc/dnsmasq.d/zz-docker-containers.conf
