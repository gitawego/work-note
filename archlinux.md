# AUR package helper

use [yay](https://github.com/Jguer/yay), install: ``sudo pacman -S yay``

how to install package without integrity check:

```shell
yay -S --mflags --skipinteg google-chrome
```

# command like apt-get update && apt-get upgrade.

```shell
sudo pacman -Syu
```

# command like apt-get install <package>
  
  ```shell
  # to install
  sudo pacman -S <package>
  # to remove
  sudo pacman -R <package>
  ```

# drivers

- nvidia drivers: [installing drivers](https://github.com/lutris/docs/blob/master/InstallingDrivers.md#arch--manjaro--other-arch-linux-derivatives)
- wine: [install wine dependencies](https://github.com/lutris/docs/blob/master/WineDependencies.md)
- nvidia prime: https://wiki.archlinux.org/title/PRIME#PRIME_render_offload

if computer has hybride graphical cards, then install `nvidia-prime` to manage different graphical cards.

# how to enable bluetooth

https://itsfoss.com/bluetooth-arch-linux/

```shell
# check status
sudo systemctl status bluetooth

# enable
sudo systemctl enable bluetooth

# start
sudo systemctl start bluetooth


```



# softwares

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
  flatpak

## flatpak softwares

remember to set folders in `XDG_DATA_DIRS`

export XDG_DATA_DIRS="/home/$USER/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:$XDG_DATA_DIRS"


flatpak install flathub com.tencent.WeChat

