#!/bin/bash
/usr/bin/ansible-playbook -i ansible/host ansible/configure_machine.yml --ask-pass --ask-become-pass

