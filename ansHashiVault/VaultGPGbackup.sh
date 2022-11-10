#!/bin/bash
#echo "Copying Vault Data"
cp -r /home/vault/data /tmp/vaultdata
#echo "Compressing Data"
tar -czvf /tmp/backup1.tar.gz /tmp/vaultdata
#echo "Encrypting Data"
gpg --output backup1.tar.gz.gpg --encrypt --recipient johnsmith@localhost --trust-model always backup1.tar.gz