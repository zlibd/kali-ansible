#!/bin/bash

# Check if ansible-playbook exists already
if [ -f ~/.local/bin/ansible-playbook ]
then
	# Run the playbook locally
	~/.local/bin/ansible-playbook -i localhost, -K kali.yml

else
	# Grab sudo password early so user doesn't have to wait
	read -s -p "sudo password: " PASSWORD
	echo ""

	# Install ansible
	python3 -m pip -q install --user ansible

	# Run the playbook locally
	~/.local/bin/ansible-playbook kali.yml -i localhost, -e "ansible_sudo_pass=$PASSWORD"
fi
