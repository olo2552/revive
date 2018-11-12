#!/bin/bash
pacman -Syu ansible
ansible-playbook ./ansible/playbooksRevive-playbook.yaml
