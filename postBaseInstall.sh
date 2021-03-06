#!/bin/bash

# mkfs.ext4 /dev/sda2
# mkfs.fat -F32 /dev/sda1
# mount /dev/sda1 /mnt
# mkdir -p /mnt/boot/efi
# mount /dev/sda2 /mnt/boot/efi
# pacstrap /mnt base linux linux-firmware neovim
# genfstab -U /mnt >> /mnt/etc/fstab
# arch-chroot /mnt


fallocate -l 2G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo "/swapfile none swap defaults 0 0" >> /etc/fstab
echo "fstab file changed correctly"

ln -sf /usr/share/zoneinfo/America/Bogota /etc/localtime
hwclock --systohc --local
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "local time and keyboard configured"

echo "arch" > /etc/hostname
echo "127.0.0.1 localhost" > /etc/hosts
echo "::1 localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain  arch" >> /etc/hosts
echo "hostname configured"

pacman -S grub efibootmgr networkmanager network-manager-applet base-devel linux-headers git alacritty
echo "programs installed correctly"
systemctl enable NetworkManager
echo "network configured"

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
echo "bootloader configured"

useradd -mG wheel itami
echo "user itami added update password"






