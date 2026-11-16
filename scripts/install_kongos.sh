#!/bin/bash
# Script principal d'installation de KongOS
# À exécuter dans Cubic (environnement Ubuntu/GNOME)

echo "=========================================="
echo "   INSTALLATION DE L'IDENTITÉ KONGOS"
echo "=========================================="

# Vérification que le dossier temporaire existe
if [ ! -d "/tmp/kongos-assets" ]; then
    echo "Erreur : Le dossier /tmp/kongos-assets est introuvable."
    echo "Assure-toi d'avoir copié les assets avant de lancer ce script."
    exit 1
fi

# 1. Appliquer le fond d'écran du bureau (Version GNOME)
if [ -f "/tmp/kongos-assets/scripts/set_wallpaper.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_wallpaper.sh
fi

# 2. Activer les astérisques pour les mots de passe (pwfeedback)
if [ -f "/tmp/kongos-assets/scripts/enable_password_feedback.sh" ]; then
    bash /tmp/kongos-assets/scripts/enable_password_feedback.sh
fi

# 3. Appliquer l'écran de démarrage (Plymouth - l'image de l'horizon)
if [ -f "/tmp/kongos-assets/scripts/set_plymouth.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_plymouth.sh
fi

# 4. Installer les icônes KongOS
if [ -f "/tmp/kongos-assets/scripts/set_icons.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_icons.sh
fi

# 5. Appliquer le thème GNOME (Mode sombre)
if [ -f "/tmp/kongos-assets/scripts/set_gnome_theme.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_gnome_theme.sh
fi

# 6. Appliquer les effets visuels GNOME (Flou, transparence)
if [ -f "/tmp/kongos-assets/scripts/set_gnome_effects.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_gnome_effects.sh
fi

# 7. Installer le curseur KongOS
if [ -f "/tmp/kongos-assets/scripts/set_cursor.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_cursor.sh
fi

# 8. Supprimer les traces visibles d'Ubuntu
if [ -f "/tmp/kongos-assets/scripts/remove_ubuntu_branding.sh" ]; then
    bash /tmp/kongos-assets/scripts/remove_ubuntu_branding.sh
fi

echo "=========================================="
echo "   INSTALLATION DE KONGOS TERMINÉE !"
echo "=========================================="
echo "Tu peux maintenant générer ton ISO dans Cubic."
