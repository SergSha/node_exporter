#!/bin/bash

# Run as root?
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root"
  exit 1
else

# Add service user node_exporter
useradd --no-create-home --shell /bin/false node_exporter

# Create directoru distrib
mkdir /root/distrib

# Go to directory distrib
cd /root/distrib/

# Download from GitHub node_exporter
curl -LO https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz

# Unpack archive
tar -xvf ./node_exporter-1.3.1.linux-amd64.tar.gz

# Delete archive
rm -f /root/distrib/node_exporter-1.3.1.linux-amd64.tar.gz

# Copy node_exporter to /usr/local/bin
cp -fv /root/distrib/node_exporter-1.3.1.linux-amd64/node_exporter /usr/local/bin/

# Change owner and group /usr/local/bin/node_exporter
chown node_exporter: /usr/local/bin/node_exporter

# Copy node_exporter.service
cp -f /root/node_exporter.service /etc/systemd/system/

# Start node_exporter
systemctl start node_exporter

# Add node_exporter to autostart
systemctl enable node_exporter

# Get node_exporter status
systemctl status node_exporter



fi
