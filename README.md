# Debian 11 userland on android smartphone

## How to create a chroot
```
mkdir _chroot
./create.sh
```

## How to enter chroot
```
./start.sh  # run as root in chroot
# or
./ustart.sh  # run as unpriviledged user
```

sources:
  - https://www.opennet.ru/tips/3194_android_debian_root_xfce_chroot_debootstrap.shtml
