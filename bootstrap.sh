#!/usr/bin/env bash

set -e

#make sure its up-to-date
echo "Running apt-get update"
sudo apt-get update

if [ "$EUID" -ne "0" ] ; then
        echo "Script must be run as root." >&2
        exit 1
fi

if which puppet > /dev/null ; then
        echo "Puppet is already installed"
        exit 0
fi

echo "Installing Puppet repo for Ubuntu 16.04 Xenial"
wget -qO /tmp/puppetlabs-release-pc1-xenial.deb \
        https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
dpkg -i /tmp/puppetlabs-release-pc1-xenial.deb
rm /tmp/puppetlabs-release-pc1-xenial.deb
apt-get update

echo Installing puppet
apt-get install -y puppet
echo "Puppet installed!"