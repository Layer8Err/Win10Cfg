# Setup Programs and Features for new Windows Install

Write-Host("Installing WSL2...")
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JfKrM'))
Write-Host(" ...Do not continue until second reboot and WSL2 setup complete")

Write-Host("Installing Chocolatey...")
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Host("Running Windows 10 Debloat...")
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

Write-Host("Selecting custom themepack: Silent-Dark...")
powershell "Silent-Dark.deskthemepack"

Write-Host("Installing Google Chrome...")
choco install googlechrome -Y

Write-Host("Installing Git...")
choco install git -Y
Write-Host(" ...make sure to configure an SSH key for Git...")

Write-Host("Installing custom font: hackfont...")
choco install hackfont -Y

Write-Host("Installing Windows Terminal...")
choco install microsoft-windows-terminal -Y

Write-Host("Installing Oh-my-Posh...")
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
if (!(Test-Path -Path $PROFILE )) { New-Item -Type File -Path $PROFILE -Force }
echo "Import-Module posh-git" > $PROFILE
echo "Import-Module oh-my-posh" >> $PROFILE
echo "Set-Theme Agnoster" >> $PROFILE

Write-Host("Installing VSCode...")
choco install vscode -Y

Write-Host("Installing 7-Zip...")
choco install 7zip.install -Y

Write-Host("Installing DBeaver...")
choco install dbeaver -Y

Write-Host("Installing Docker-Desktop...")
choco install docker-desktop -Y

Write-Host("Installing Acrobat Reader...")
choco install adobereader -Y -params '"/UpdateMode:4"'

Write-Host("Installing Libre Office...")
choco install libreoffice-still -Y

Write-Host("Installing GIMP...")
choco install gimp -Y
