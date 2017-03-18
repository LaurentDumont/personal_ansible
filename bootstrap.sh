#!/bin/bash
/bin/echo "Adding the Ansible PPA to Ansible"
/bin/echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" > /etc/apt/sources.list.d/ansible.list
/bin/echo "Adding the Ansible PPA key"
/usr/bin/apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
/bin/echo "Updating the APT repository"
/usr/bin/apt-get update
/bin/echo "Installing Ansible from APT"
/usr/bin/apt-get install ansible -y -qq
/bin/echo "Running the Playbook to configure the local machine - Please enter your password - User needs sudo access"
/usr/bin/ansible-playbook -i ansible/host ansible/configure_machine.yml --ask-pass --ask-become-pass
