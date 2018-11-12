#!/bin/bash
pacman -Syu ansible
sudo ansible-playbook ./ansible/playbooks/Revive-playbook.yaml
