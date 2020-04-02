#!/bin/bash
ssh-keygen -t rsa -C "michaelrkramer@gmail.com"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "Copied to clipboard."

