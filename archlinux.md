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
