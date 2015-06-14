#Create a folder for the ramdisk
mkdir /mnt/ramDisk

#Mount the USB drive in /mnt/usb
mount /dev/sda1 /mnt/usb

#Create and mount the swap space
dd if=/dev/zero of=/mnt/usb/swap bs=1024 count=524288
mkswap /mnt/usb/swap
swapon /mnt/usb/swap
