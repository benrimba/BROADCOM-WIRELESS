#!/bin/bash
clear
echo "#####################################################################################"
echo "INSTAL BROADCOM WIRELESS                                                             "
echo "Rudi Edukasi                                                                         "
echo "#####################################################################################"
sleep 2

PS3='Silahkan masukan pilihan anda: '
options=("Install Wifi Driver" "Tampilkan Perintah" "Berhenti")
select opt in "${options[@]}"
do
    case $opt in
        "Install Wifi Driver")
            echo "Setelah Install driver silahkan restart laptop/Pc Anda"
            apt-get update
apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms
modprobe -r b44 b43 b43legacy ssb brcmsmac bcma
modprobe wl
reboot
            ;;
        "Tampilkan Perintah")
            echo "apt-get update"
            echo "apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms"
            echo "modprobe -r b44 b43 b43legacy ssb brcmsmac bcma"
            echo "modprobe -r b44 b43 b43legacy ssb brcmsmac bcma"
            echo "modprobe wl"
            ;;
        "Berhenti")
            break
            ;;
        *) echo invalid option;;
    esac
done
