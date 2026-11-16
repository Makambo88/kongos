#!/bin/bash
# Installe le curseur personnalisé KongOS

echo "Installation du curseur KongOS..."

# 1. Créer le dossier du thème de curseur
sudo mkdir -p /usr/share/icons/KongOS-Cursor/cursors/

# 2. Copier les images (on suppose qu'elles sont dans /tmp/kongos-assets/cursor/)
# Note : GNOME utilise souvent des noms spécifiques pour les curseurs.
# On crée un lien symbolique pour faire simple.
sudo cp /tmp/kongos-assets/cursor/default.png /usr/share/icons/KongOS-Cursor/cursors/default
sudo cp /tmp/kongos-assets/cursor/pointer.png /usr/share/icons/KongOS-Cursor/cursors/pointer
sudo cp /tmp/kongos-assets/cursor/wait.png /usr/share/icons/KongOS-Cursor/cursors/wait

# 3. Créer le fichier index.theme pour que GNOME reconnaisse le thème
sudo tee /usr/share/icons/KongOS-Cursor/index.theme > /dev/null << 'EOF'
[Icon Theme]
Name=KongOS-Cursor
Comment=Curseur officiel de KongOS
Inherits=Adwaita
EOF

# 4. Dire à GNOME d'utiliser ce curseur
gsettings set org.gnome.desktop.interface cursor-theme 'KongOS-Cursor'

echo "Curseur KongOS installé avec succès."
