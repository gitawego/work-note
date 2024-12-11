# Ubuntu

## How to set write permission on ext4 partition

### set options via disk application
open disk application, select the target partition, choose option `Edit mount options`

put `rw,nosuid,nodev,nofail,x-gvfs-show` as mount option, 
check `mount at system startup` and `show in user interface`

## set correct permission

go to that moun folder, for example, `/mnt/data`

add this folder in `adm` group: `sudo chgrp adm /mnt/data`

change permission to only the group users: `sudo chmod g+w /mnt/data`

# Arch Linux

## AUR package helper

use [yay](https://github.com/Jguer/yay), install: ``sudo pacman -S yay``

how to install package without integrity check:

```shell
yay -S --mflags --skipinteg google-chrome
```

## command like apt-get update && apt-get upgrade.

```shell
sudo pacman -Syu
```

## command like apt-get install <package>
  
  ```shell
  # to install
  sudo pacman -S <package>
  # to remove
  sudo pacman -R <package>
  ```

## drivers

- nvidia drivers: [installing drivers](https://github.com/lutris/docs/blob/master/InstallingDrivers.md#arch--manjaro--other-arch-linux-derivatives)
- wine: [install wine dependencies](https://github.com/lutris/docs/blob/master/WineDependencies.md)
- nvidia prime: https://wiki.archlinux.org/title/PRIME#PRIME_render_offload

if computer has hybride graphical cards, then install `nvidia-prime` to manage different graphical cards.

## how to enable bluetooth

https://itsfoss.com/bluetooth-arch-linux/

```shell
# check status
sudo systemctl status bluetooth

# enable
sudo systemctl enable bluetooth

# start
sudo systemctl start bluetooth

# or use following commands

bluetoothctl power off && bluetoothctl power on


```



## softwares

yay -S --needed \
  blender \
  discord \
  docker \
  gimp \
  inkscape \
  lolcat \
  microsoft-edge-stable-bin \
  nvm \
  slack-desktop \
  steam \
  visual-studio-code-bin \
  linuxqq \
  skype \
  wps-office-cn \
  ibus-pinyin \
  flatpak \
  ttf-ms-win11-auto \
  sane

### flatpak softwares

remember to set folders in `XDG_DATA_DIRS`, put follow line in `~/.bashrc`

```bash
export XDG_DATA_DIRS="/home/$USER/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"
```


flatpak install flathub com.tencent.WeChat org.gnome.SimpleScan com.microsoft.Edge

#### Microsoft edge

github: https://github.com/flathub/com.microsoft.Edge

##### Passing custom flags

We encourage users to insert all flags inside `~/.var/app/com.microsoft.Edge/config/edge-flags.conf`. If this file doesn't exist, then create one. 

Following flags are tested for hardware accelerated video encode (2024-12-10), it works as well for chrome/chromium

```
--ozone-platform-hint=auto
--ignore-gpu-blocklist
--enable-features=VaapiVideoEncoder,AcceleratedVideoDecodeLinuxGL,VaapiVideoDecoder,VaapiIgnoreDriverChecks
--enable-zero-copy
--gtk-version=4
```

# FAQ

## super key is not working in gnome

try key `Fn+F2`, it may be the cause.
