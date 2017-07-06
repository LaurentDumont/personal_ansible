#!/bin/bash

if ! [ -f /etc/apt/sources.list.d/ansible.list ]; then
  sudo apt-get update
  sudo apt-get install dirmngr
  echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
  sudo apt-get update
  sudo apt-get install ansible -y -q
else
  echo "Ansible is already installed - skipping."
fi

