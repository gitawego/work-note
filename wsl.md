# WSL

## let windows use linux permission

### encounterd error

when cloning git

```
fatal: could not set 'core.filemode' to 'false'
```

### solution

Launch Ubuntu WSL

Create the file /etc/wsl.conf if it doesn’t exist

Open the file (e.g.: nano /etc/wsl.conf) and add the following lines:

```
[automount]
options = "metadata"
```

Save the file and shutdown WSL launching wsl --shutdown from a PowerShell

Relaunch Ubuntu WSL

The metadata option allows Windows to support Linux system permissions: now all chmod/chown-related stuff will work correctly!
