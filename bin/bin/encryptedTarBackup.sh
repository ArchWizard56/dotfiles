#!/bin/bash

BACKUPFILES="bin"
OUTPLACE="test.tar.gz.aes"
PASSWORD="TEST"

tar -czf - $BACKUPFILES | openssl enc -pass pass:$PASSWORD --pbkdf2 -e -aes256 -out $OUTPLACE

# To decrypt:
# openssl enc -d --pbkdf2 -aes256 -in <encrypted tar file> | tar xz -C <folder to extract to>


