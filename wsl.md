# WSL

## let windows uses linux permission

### encounterd error

when cloning git

```
fatal: could not set 'core.filemode' to 'false'
```

### solution

Launch Ubuntu WSL

Create the file `/etc/wsl.conf` if it doesn’t exist

Open the file (e.g.: nano /etc/wsl.conf) and add the following lines:

```
[automount]
options = "metadata"
```

Save the file and shutdown WSL launching wsl --shutdown from a PowerShell

Relaunch Ubuntu WSL

The metadata option allows Windows to support Linux system permissions: now all chmod/chown-related stuff will work correctly!

## The parameter is incorrect. when enter into ubuntu via cmd

It happens for me when installing WSL without admin.

- check list of wsl.exe using `where wsl`, you will notice there are two lines
  ```
    C:\Windows\System32\wsl.exe
    C:\Users\<username>\AppData\Local\Microsoft\WindowsApps\wsl.exe
  ```
- create a shortcut in terminal, and set the command line to: `C:\Users\<username>\AppData\Local\Microsoft\WindowsApps\wsl.exe -d ubuntu`
- enter ubuntu using this terminal shortcut.
