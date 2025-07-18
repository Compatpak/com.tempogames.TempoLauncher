# Tempo Launcher
## Building
> **_NOTE:_**  With org.winestaging.Sdk and org.winestaging.Platform installed.
```console
flatpak run org.flatpak.Builder build-dir --repo=../Compatpak/repo --force-clean com.tempogames.TempoLauncher.yml
```
## Installing
```console
flatpak install ../Compatpak/repo com.tempogames.TempoLauncher
```
## Running
```console
flatpak run com.tempogames.TempoLauncher
```
## Removing
```console
flatpak remove com.tempogames.TempoLauncher
```
## Troubleshooting
- Check if Flatpak is installed
```console
flatpak list | grep TempoLauncher
```
- Enter Flatpak in command line mode
```console
flatpak run --command=sh com.tempogames.TempoLauncher
```
## Flatpak locations
- Installation directory             = /var/lib/flatpak/app/com.tempogames.TempoLauncher/
- Wine prefix                        = ~/.var/app/com.tempogames.TempoLauncher/data/wine
