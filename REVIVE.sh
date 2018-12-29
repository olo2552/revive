#!/bin/bash
sudo pacman -Syu ansible
ansible-playbook ~/repos/REVIVE/ansible/playbooks/Revive-playbook.yaml --ask-become-pass
