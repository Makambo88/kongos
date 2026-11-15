#!/bin/bash
# Applique le thème sombre et les couleurs KongOS sur GNOME

echo "Application du thème KongOS pour GNOME..."
# Force le mode sombre
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
# Applique un thème GTK sombre (Adwaita-dark est natif sur Ubuntu)
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
echo "Thème GNOME configuré."
