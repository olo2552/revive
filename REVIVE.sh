#!/bin/bash
pacman -Syu ansible
sudo ansible-playbook ~/repos/REVIVE/ansible/playbooks/Revive-playbook.yaml
