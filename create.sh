#!/bin/bash
if ! [[ -d ./_chroot ]]; then
	echo '"_chroot" does not exist :('
	exit 1
fi

pkg install -y root-repo
pkg install -y proot
pkg install -y debootstrap
pkg install -y vim
pkg install -y nano
pkg install -y wget
pkg install -y man

debootstrap --arch=arm64 bullseye ./_chroot http://mirror.yandex.ru/debian

mkdir ./_chroot/system
mkdir ./_chroot/apex
mkdir ./_chroot/home/user

[[ -f ./passwd ]] && cp -v ./passwd ./_chroot/etc/passwd
[[ -f ./group ]] && cp -v ./group ./_chroot/etc/group
