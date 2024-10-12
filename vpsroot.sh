#!/bin/bash
# Mod By SL
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/HE3ndrixx/cyberspace/main/sshd_config;
systemctl restart sshd;
clear;
echo -e "Enter Password:";
read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
printf "Please Save This VPS Account Information
============================================
Akun Root (Akun Utama)
Ip address = $(curl -Ls http://ipinfo.io/ip)
Username   = root
Password   = $pwe
============================================
echo "";
exit;
