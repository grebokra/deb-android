#!/data/data/com.termux/files/usr/bin/sh
unset LD_PRELOAD
proot \
  --link2symlink \
  -w /home/user \
  -r ./_chroot \
  -b /sys/ \
  -b /system \
  -b /apex \
  -b /proc/ \
  -b /dev/ \
  -b /dev/pts/ \
  /usr/bin/env \
    -i \
    HOME=/home/user \
    LD_LIBRARY_PATH=/system/lib64:/system/apex/com.android.runtime.release/lib64 \
    XDG_RUNTIME_DIR=/tmp \
    DISPLAY=127.0.0.1:0 \
    PULSE_SERVER=tcp:127.0.0.1:4713 \
    TERM="xterm-256color" \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin \
    /bin/bash --login
