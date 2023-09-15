#!/bin/bash
# Not POSIX compliant

# Get user sudo password
read -s -p "sudo password: " PASSWORD

# Install ansible
python3 -m pip -q install --user ansible

# Run the playbook locally
~/.local/bin/ansible-playbook -i localhost, -K kali.yml
~/.local/bin/ansible-playbook kali.yml -i localhost, -e "ansible_sudo_pass=$PASSWORD"
