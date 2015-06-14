#Create the folder to mount the chroot in
mkdir /mnt/ubuntu
mount -o loop /data/video/usb/ubuntu.fs /mnt/ubuntu

#Set up /dev, /proc, and /sys
mount -o bind /dev /mnt/ubuntu/dev
mount -t proc proc /mnt/ubuntu/proc
mount -t sysfs sys /mnt/ubuntu/sys

#Enter the chroot
chroot /mnt/ubuntu/ /bin/bash
