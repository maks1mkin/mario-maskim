#!/bin/bash

# Prompt for the host
read -p "Enter the host (e.g., root@192.168.1.66): " host

# Update the hosts file
echo "[webservers]" > ./ansible/hosts
echo "$host" >> ./ansible/hosts

# Run the Ansible playbook
playbook_path="./ansible/playbook.yml"
if [ -f "$playbook_path" ]; then
    ansible-playbook -i ./ansible/hosts "$playbook_path"
else
    echo "Error: $playbook_path does not exist."
    exit 1
fi
