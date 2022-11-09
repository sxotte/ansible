## Purpose

This repository contains three ansible playbooks.

sshSetup.yml will generate an SSH key on the local machine and distribute it to remote hosts to enable Ansible deployments.

hashiVaultInstall.yml will install Hashicorp Vault on a remote host as a single node using Integrated Storage.

hashiVaultBackup will create a local GPG key, export it to the remote host and configure the automatic compression and encryption of vault data.

---

## sshSetup.yml

sshSetup.yml requires hosts.ini, there are a number of variables in here that will need to be updated to match the target environment.

run this playbook as 

```bash
ansible-playbook sshSetup.yml -i hosts.ini
```

---

## hashiVaultInstall.yml

hashiVaultInstall.yml requires hosts.ini and vars.yml



