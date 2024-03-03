#!/bin/bash
wget -P thorium/ https://github.com/Alex313031/thorium/releases/download/M119.0.60>
sudo cp -r thorium/ /usr/local/
sudo cp thorium.desktop ~/.local/share/applications
sudo chmod +x /usr/local/thorium/Thorium_Browser_119.0.6045.214.AppImage
sudo chown $USER:$USER -R /usr/local/thorium
