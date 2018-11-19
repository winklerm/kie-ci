#!/bin/bash
export ANSIBLE_SCP_IF_SSH=y
~/bin/packer build\
  -var "openstack_endpoint=$OS_AUTH_URL"\
  -var "openstack_username=$OS_USERNAME"\
  -var "openstack_password=$OS_PASSWORD"\
  -var "image_name=rhel-7-kie-slave-snapshot"\
  -var "ssh_keypair_name=$OS_KEY_NAME" \
  -var "ssh_private_key_file=$OS_KEY_PATH"\
  packer-kie-rhel7.json
