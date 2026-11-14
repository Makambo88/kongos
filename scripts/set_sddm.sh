#!/bin/bash
# Configure l'écran de connexion SDDM pour KongOS

echo "Configuration de l'écran de connexion KongOS..."

# 1. Créer le dossier du thème
sudo mkdir -p /usr/share/sddm/themes/kongos-theme

# 2. Copier l'image de fond et le fichier de configuration
sudo cp /tmp/kongos-assets/sddm/background-sddm.png /usr/share/sddm/themes/kongos-theme/background.png
sudo cp /tmp/kongos-assets/sddm/theme.conf /usr/share/sddm/themes/kongos-theme/theme.conf

# 3. Activer le thème pour SDDM
sudo mkdir -p /etc/sddm.conf.d/
echo -e "[Theme]\nCurrent=kongos-theme" | sudo tee /etc/sddm.conf.d/kongos-theme.conf

echo "Écran de connexion configuré."
