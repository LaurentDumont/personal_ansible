#!/bin/bash
/bin/echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list
/usr/bin/apt-get update
/usr/bin/apt-get install ansible
/usr/local/bin/ansible-playbook -i ansible/host ansible/configure_machine.yml --ask-pass --ask-become-pass
