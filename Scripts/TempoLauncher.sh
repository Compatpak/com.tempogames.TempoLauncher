#!/bin/sh
echo "Running Wineboot"
wineboot

echo "Setting Windows version to 10"
winecfg -v win10

echo "Updating registry"
wine regedit /app/share/WineGraphics.reg
sleep 3

echo "Setting up Discord rich presence"
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i ||
    ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

echo "Checking if Tempo Launcher is already installed"
if [ -d "/var/data/wine/drive_c/Program Files/Tempo Launcher - Beta/" ]; then
  echo "Tempo Launcher is installed"

  echo "Changing directory to /var/data/wine/drive_c/Program Files/Tempo Launcher - Beta/"
  cd "/var/data/wine/drive_c/Program Files/Tempo Launcher - Beta/"

  echo "Launching Tempo Launcher"
  wine "/var/data/wine/drive_c/Program Files/Tempo Launcher - Beta/Tempo Launcher - Beta.exe"
else
  echo "Tempo Launcher is not installed"

  echo "Launching TempoLauncherSetup.exe"
  wine /app/bin/TempoLauncherSetup.exe
fi
