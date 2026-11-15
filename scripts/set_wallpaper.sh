#!/bin/bash
# Applique le fond d'écran du bureau KongOS

echo "Application du fond d'écran du bureau..."
sudo mkdir -p /usr/share/wallpapers/KongOS/
sudo cp /tmp/kongos-assets/wallpapers/wallpaper-desktop.jpg /usr/share/wallpapers/KongOS/wallpaper-desktop.jpg

# Configuration pour KDE Plasma
sudo mkdir -p /etc/skel/.config
sudo tee /etc/skel/.config/plasma-org.kde.plasma.desktop-appletsrc > /dev/null << 'EOF'
[Containments][1]
wallpaperplugin=org.kde.image
[Containments][1][Wallpaper][org.kde.image][General]
Image=file:///usr/share/wallpapers/KongOS/wallpaper-desktop.jpg
EOF
echo "Fond d'écran appliqué."
