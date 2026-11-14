#!/bin/bash
# Installe le thème d'icônes personnalisé KongOS

echo "=== Installation des icônes KongOS ==="

# 1. Créer la structure de dossiers pour notre thème d'icônes
sudo mkdir -p /usr/share/icons/KongOS/512x512/apps
sudo mkdir -p /usr/share/icons/KongOS/512x512/places

# 2. Copier tes icônes depuis le dossier temporaire de Cubic
# (On suppose que tu as bien nommé tes fichiers dans /tmp/kongos-assets/icons/)
sudo cp /tmp/kongos-assets/icons/preferences-system.png /usr/share/icons/KongOS/512x512/apps/
sudo cp /tmp/kongos-assets/icons/web-browser.png /usr/share/icons/KongOS/512x512/apps/
sudo cp /tmp/kongos-assets/icons/utilities-terminal.png /usr/share/icons/KongOS/512x512/apps/
sudo cp /tmp/kongos-assets/icons/user-trash.png /usr/share/icons/KongOS/512x512/apps/
sudo cp /tmp/kongos-assets/icons/user-trash-full.png /usr/share/icons/KongOS/512x512/apps/
sudo cp /tmp/kongos-assets/icons/folder-home.png /usr/share/icons/KongOS/512x512/places/

# 3. Créer le fichier index.theme (obligatoire pour que KDE reconnaisse le thème)
sudo tee /usr/share/icons/KongOS/index.theme > /dev/null << 'EOF'
[Icon Theme]
Name=KongOS
Comment=Thème d'icônes officiel de KongOS
Inherits=Papirus-Dark,hicolor
Directories=512x512/apps,512x512/places
EOF

echo "=== Icônes KongOS installées avec succès ==="
