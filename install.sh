#!/bin/bash

links=$(curl -s "https://api.github.com/repos/Alex313031/thorium/releases/latest" | grep -o -E "https://.*\.AppImage")

if [[ $(cat /proc/cpuinfo | grep -o -E 'avx2' | head -1) ]]; then
    link=$(echo "$links" | grep "AVX2" | head -1)
elif [[ $(cat /proc/cpuinfo | grep -o -E 'avx' | head -1) ]]; then
    link=$(echo "$links" | grep "AVX" | head -1)
else
    link=$(echo "$links" | grep "SSE3" | head -1)
fi

curl -L -o "Thorium_Browser.AppImage" "$link"
chmod +x "Thorium_Browser.AppImage"

sudo mkdir -p "/usr/local/thorium/"
sudo cp "Thorium_Browser.AppImage" "/usr/local/thorium/" ; sudo cp "thorium_logo.png" "/usr/local/thorium"
sudo chown $USER:$USER -R "/usr/local/thorium"
sudo cp "thorium.desktop" "/usr/share/applications/"

echo "Installed Successfully!"
