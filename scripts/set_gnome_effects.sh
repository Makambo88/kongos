#!/bin/bash
# Active les effets visuels sur GNOME (Ubuntu)

echo "Configuration des effets visuels GNOME..."
# Active le flou (blur) sur les fenêtres et le dock
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'FIXED'
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.6
# Pour le flou sur les fenêtres, il faut l'extension "Blur my Shell" (on l'installera via apt)
echo "Effets GNOME configurés."
