#!/bin/bash
# https://www.linuxito.com/programacion/890-como-mantener-tu-fork-sincronizado-con-upstream-en-git
git pull
cd /opt
git clone https://github.com/AmatheraeWorld/linux-smart-enumeration.git ; cd linux-smart-enumeration
git remote add upstream https://github.com/diego-treitos/linux-smart-enumeration ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/wesng.git ; cd wesng
git remote add upstream https://github.com/bitsadmin/wesng ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/impacket.git ; cd impacket
git remote add upstream https://github.com/SecureAuthCorp/impacket ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/patator.git ; cd patator
git remote add upstream https://github.com/lanjelot/patator ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/dirsearch.git ; cd dirsearch
git remote add upstream https://github.com/maurosoria/dirsearch ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/Veil.git ; cd Veil
git remote add upstream https://github.com/Veil-Framework/Veil ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/Phantom-Evasion.git ; cd Phantom-Evasion
git remote add upstream https://github.com/oddcod3/Phantom-Evasion ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/nishang.git ; cd nishang
git remote add upstream https://github.com/samratashok/nishang ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/AutoBlue-MS17-010.git ; cd AutoBlue-MS17-010
git remote add upstream https://github.com/3ndG4me/AutoBlue-MS17-010 ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/win-brute-logon ; cd win-brute-logon
git remote add upstream https://github.com/DarkCoderSc/win-brute-logon ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/UACME ; cd UACME
git remote add upstream https://github.com/hfiref0x/UACME ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/juicy-potato ; cd juicy-potato
git remote add upstream https://github.com/ohpe/juicy-potato ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/privilege-escalation-awesome-scripts-suite ; cd privilege-escalation-awesome-scripts-suite
git remote add upstream https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/furious ; cd furious
git remote add upstream https://github.com/liamg/furious ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/windows-kernel-exploits ; cd windows-kernel-exploits
git remote add upstream https://github.com/SecWiki/windows-kernel-exploits ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/linux-kernel-exploits ; cd linux-kernel-exploits
git remote add upstream https://github.com/SecWiki/linux-kernel-exploits ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/CVE-2020-1472 ; cd CVE-2020-1472
git remote add upstream https://github.com/SecuraBV/CVE-2020-1472 ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/CVE-2020-1473 ; cd CVE-2020-1473
git remote add upstream https://github.com/dirkjanm/CVE-2020-1472 ; git pull upstream master
cd /opt
git clone https://github.com/AmatheraeWorld/RoguePotato ; cd RoguePotato
git remote add upstream https://github.com/AmatheraeWorld/RoguePotato ; git pull upstream master
