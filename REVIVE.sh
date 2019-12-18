#!/bin/bash
sudo pacman -Syu ansible
ansible-playbook /home/$SUDO_USER/repos/REVIVE/ansible/playbooks/Revive-playbook.yaml -vv --ask-become-pass
