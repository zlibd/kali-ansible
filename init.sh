#!/bin/bash

# Install ansible
python3 -m pip -q install --user ansible

# Run the playbook locally
~/.local/bin/ansible-playbook -i localhost, -K kali.yml
