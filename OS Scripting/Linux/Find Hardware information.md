# Find Hardware Information

Source: <https://www.cyberciti.biz/faq/linux-command-to-find-the-system-configuration-and-hardware-information/>

## Distribution & Kernel Versions

`echo Distribution Vesion: && lsb_release -a`
`echo Kernel Version: && cat /proc/version`

## Free Space

`free`

## CPU Info

`lscpu`

## PCI Devices

`lspci`

## USB Devices

`lsusb`

## HDDs, CD ROMS etc

`lsblk`

## Storage Devices and Partitions

`sudo fdisk -l`