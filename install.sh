#!/bin/bash
wget -P thorium/ https://github.com/Alex313031/thorium/releases/download/M121.0.6167.204/Thorium_Browser_121.0.6167.204_AVX.AppImage
sudo cp -r thorium/ /usr/local/
sudo cp thorium.desktop ~/.local/share/applications
sudo chmod +x /usr/local/thorium/Thorium_Browser_121.0.6167.204_AVX.AppImage
sudo chown $USER:$USER -R /usr/local/thorium
