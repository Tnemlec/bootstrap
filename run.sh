#!/usr/bin/bash

cd "$(dirname "$0")"

source setup-ansible.sh

ansible-galaxy install -r requirements.yaml

ansible-playbook main.yaml