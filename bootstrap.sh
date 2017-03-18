#!/bin/bash
/bin/echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list
/usr/bin/apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
/usr/bin/apt-get update
/usr/bin/apt-get install ansible -y -qq
/usr/bin/ansible-playbook -i ansible/host ansible/configure_machine.yml --ask-pass --ask-become-pass
