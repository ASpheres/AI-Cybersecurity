#!/bin/bash

# Set the interface name
INTERFACE=eth0

# Set the IP address and netmask
IPADDR=192.168.1.100
NETMASK=255.255.255.0

# Configure the interface
ip addr add $IPADDR/$NETMASK dev $INTERFACE
