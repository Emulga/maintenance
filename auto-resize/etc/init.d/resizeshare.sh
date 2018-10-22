#!/bin/bash
/etc/init.d/S02splash stop
/etc/init.d/S25lircd stop
/etc/init.d/S31emulationstation stop
/etc/init.d/S32bluetooth stop
/etc/init.d/S91smb stop
/etc/init.d/S92virtualgamepads stop
/etc/init.d/S94manager stop
umount /dev/mmcblk0p3
fsck /dev/mmcblk0p3 -yf
PART_NUM=3
#PART_START=$(parted /dev/mmcblk0 -ms unit s p | grep "^${PART_NUM}" | cut -f 2 -d:)
PART_START=$(fdisk -l /dev/mmcblk0 | grep 0p3 | cut -c 26-30)
fdisk /dev/mmcblk0 <<EOF
p
d
$PART_NUM
n
p
$PART_NUM
$PART_START

p
w
EOF
fsck /dev/mmcblk0p3 -yf
partprobe
/usr/sbin/resize2fs /dev/mmcblk0p3
fsck /dev/mmcblk0p3 -yf
mount -o remount,rw /
rm /etc/init.d/S01resize2fs_once
mount -o remount,ro /
#shutdown -r now

### end ###
