# Debloat

Remove unwanted junk from Windows 10

```posh
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
```

# Chocolatey

Package manager for Windows

```posh
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

# WSL2

Windows Subsystem for Linux (used by Docker-Desktop)

```posh
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JfKrM'))
```

# Google Chrome

Modern Web Browser

```posh
choco install googlechrome -Y
```

# Git

Source Control

```posh
choco install git -Y
```

# Custom Fonts

Extended fonts used by various themes

```posh
choco install hackfont -Y
```

# Windows Terminal

Improved terminal experience for Windows 10

```posh
choco install microsoft-windows-terminal -Y
```

# Oh-my-Posh

PowerShell theme based on oh-my-zsh

```posh
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force

## Set $PROFILE
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
echo "Import-Module posh-git" > $PROFILE
echo "Import-Module oh-my-posh" >> $PROFILE
echo "Set-Theme Agnoster" >> $PROFILE
```

# VSCode

Lightweight code editor

```posh
choco install vscode -Y
```

# 7-Zip

File archive handler

```posh
choco install 7zip.install -Y
```

# DBeaver

Database management for multiple different databases

```posh
choco install dbeaver -Y
```

# Docker-Desktop

Docker Desktop for Windows, uses WSL2 for continers if available

```posh
choco install docker-desktop -Y
```

# Acrobat Reader

Industry standard PDF reader

```posh
choco install adobereader -Y -params '"/UpdateMode:4"'
```

# Libre Office

Open source office software

```posh
choco install libreoffice-still -Y
```

# GIMP

GNU Image Management Program

```posh
choco install gimp -Y
```
