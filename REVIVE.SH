#!/bin/bash
pacman -Syu ansible
cd ansible/playbooks
ansible-playbook Revive-playbook.yaml
