#!/usr/bin/env bash

# Install Ansible.
sudo rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum install -y ansible libselinux-python
