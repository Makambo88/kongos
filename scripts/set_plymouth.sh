#!/bin/bash
# Configure l'écran de démarrage Plymouth pour KongOS

echo "Configuration de l'écran de démarrage KongOS..."

# 1. Créer le dossier du thème
sudo mkdir -p /usr/share/plymouth/themes/kongos/

# 2. Copier les fichiers nécessaires
sudo cp /tmp/kongos-assets/plymouth/boot-background.png /usr/share/plymouth/themes/kongos/
sudo cp /tmp/kongos-assets/plymouth/kongos.plymouth /usr/share/plymouth/themes/kongos/
sudo cp /tmp/kongos-assets/plymouth/kongos.script /usr/share/plymouth/themes/kongos/

# 3. Définir le thème par défaut
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/kongos/kongos.plymouth 100
sudo update-alternatives --set default.plymouth /usr/share/plymouth/themes/kongos/kongos.plymouth

# 4. Mettre à jour l'initramfs (nécessaire pour que Plymouth prenne en compte le changement)
sudo update-initramfs -u

echo "Écran de démarrage configuré avec succès."
