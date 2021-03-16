#!/bin/bash

sudo dnf update -y
sudo dnf group install security-lab -y
sudo dnf install hydra hydra-frontend gobuster hashcat scalpel foremost steghide whois aircrack-ng traceroute -y

mkdir -p /home/sam/SecTools
mkdir -p /home/sam/SecTools/wordlists

wget -c https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
git clone https://github.com/danielmiessler/SecLists.git

mv rockyou.txt /home/sam/SecTools/wordlists
mv SecLists /home/sam/SecTools/wordlists

sudo dnf remove security-menus -y

# John the Ripper
# --TODO --

# Compile process is long, better refer to - https://github.com/openwall/john/blob/bleeding-jumbo/doc/INSTALL-FEDORA

# Clear Screen Output
clear
