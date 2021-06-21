 GRUB loading.
# Welcome to GRUB!
#
# error: file `/boot/grub/i386-pc/normal.mod` not found.
# Entering rescue mode...
grub rescue> ls
hd(0) (hd0,msdos1)
grub rescue> set
cmdpath=(hd0)
prefix=(hd0,msdos1)/boot/grub
root=hd0,msdos1
grub rescue> set prefix=(hd0,msdos1)/usr/lib/grub
grub rescue> insmod normal
grub rescue> normal
grub> ls (hd0,msdos1) # Display UUID
grub> linux /boot/vmlinuz-linux root=UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx # Enter UUID
grub> initrd /boot/initramfs-linux.img
grub> boot
> pacman -Syyu
> grub-mkconfig -o /boot/grub/grub.cfg
> grub-install --recheck /dev/sda
> reboot
