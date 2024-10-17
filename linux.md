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
