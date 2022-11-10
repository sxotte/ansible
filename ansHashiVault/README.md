## Purpose

This repository contains three ansible playbooks.

- sshSetup.yml will generate an SSH key on the local machine and distribute it to remote hosts to enable Ansible deployments.

- hashiVaultInstall.yml will install Hashicorp Vault on a remote host as a single node using Integrated Storage.

- hashiVaultBackup will create a local GPG key pair, export the public key to the remote host and configure the automatic compression and encryption of vault data.

---

## sshSetup.yml

sshSetup.yml requires: 
 - hosts.yml. 

hosts.yml contains a number of variables that will need to be updated to match the operating environment. 

Specifically:
- Ansible Host Inventory information 
- ansible_user. 
- ansible_password. 
- remote_machine_username. 
- remote_machine_password.

run this playbook with 

```bash
ansible-playbook sshSetup.yml -i hosts.yml
```

---

## hashiVaultInstall.yml

hashiVaultInstall.yml requires: 
- hosts.yml.
- vars.yml.

Templates:
- vault-server.conf.j2 - > Vault config template
- vault.service.j2 - > Vault service template

vars.yml contains variables to customise vault installation. These can be left at default values.

run this playbook as 

```bash
ansible-playbook hashiVaultInstall.yml -i hosts.yml --become-user=root --ask-become-pass
```

---

## hashiVaultBackup.yml

hashiVaultInstall.yml requires: 
- hosts.yml
- gpgVar.yml.
- vaultGPGbackup.sh - > Script to automate the copy, compression and encryption of Vault Data


vars.yml contains variables to customise GPG certificate creation. These will need to be updated to match the operating environment.

Specifically: 
- gpg_user.

run this playbook as 

```bash
ansible-playbook hashiVaultBackup.yml -i hosts.yml --ask-become-pass
```

---






