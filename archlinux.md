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
  sudo pacman -S <package>
  ```

# drivers

- nvidia drivers: [installing drivers](https://github.com/lutris/docs/blob/master/InstallingDrivers.md#arch--manjaro--other-arch-linux-derivatives)
- wine: [install wine dependencies](https://github.com/lutris/docs/blob/master/WineDependencies.md)

if computer has hybride graphical cards, then install `nvidia-prime` to manage different graphical cards.

# how to enable bluetooth

https://itsfoss.com/bluetooth-arch-linux/



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
  wps-office-cn

