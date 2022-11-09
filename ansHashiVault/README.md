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



```bash
git clone https://github.com/ilias-sp/ansible-setup-passwordless-ssh.git
```

Alternatively, you can download the `ansible_setup_passwordless_ssh.yml` and `hosts` from this repository.

---

## Prerequisites

Make sure your Ansible host is equipped with the utilities, and that they are available to the PATH of the user you will be running the playbook as.

- ssh-keygen
- ssh-copy-id
- sshpass

If you dont have them, before continuing you will have to install them using the recommended ways for your Linux distribution.

---

## Preparations before you run