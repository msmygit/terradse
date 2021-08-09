#!/bin/bash

cd ansible

"$(pwd)"

echo
echo ">>>> Configure recommended OS/Kernel parameters for DSE nodes <<<<"
echo
ansible-playbook -i hosts osparm_change.yaml --private-key=~/.ssh/id_rsa_aws -u ubuntu
echo

echo
echo ">>>> Setup DSE application cluster <<<<"
echo
ansible-playbook -i hosts dse_app_install.yaml --private-key=~/.ssh/id_rsa_aws -u ubuntu
echo

cd ..
