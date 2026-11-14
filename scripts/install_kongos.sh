#!/bin/bash
# Script principal d'installation de KongOS
# À exécuter dans Cubic (environnement Kubuntu)

echo "=========================================="
echo "   INSTALLATION DE L'IDENTITÉ KONGOS"
echo "=========================================="

# Vérification que le dossier temporaire existe
if [ ! -d "/tmp/kongos-assets" ]; then
    echo "Erreur : Le dossier /tmp/kongos-assets est introuvable."
    echo "Assure-toi d'avoir copié les assets avant de lancer ce script."
    exit 1
fi

# 1. Appliquer le fond d'écran du bureau (l'image de la ville futuriste)
if [ -f "/tmp/kongos-assets/scripts/set_wallpaper.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_wallpaper.sh
fi

# 2. Activer les astérisques pour les mots de passe (pwfeedback)
if [ -f "/tmp/kongos-assets/scripts/enable_password_feedback.sh" ]; then
    bash /tmp/kongos-assets/scripts/enable_password_feedback.sh
fi

# 3. Installer l'icône principale (le logo "K")
if [ -f "/tmp/kongos-assets/scripts/set_logo.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_logo.sh
fi

# 4. Appliquer l'écran de démarrage (Plymouth - l'image de l'horizon)
if [ -f "/tmp/kongos-assets/scripts/set_plymouth.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_plymouth.sh
fi

# 5. Appliquer l'écran de connexion (SDDM - l'image de la Terre avec les champs)
if [ -f "/tmp/kongos-assets/scripts/set_sddm.sh" ]; then
    bash /tmp/kongos-assets/scripts/set_sddm.sh
fi

echo "=========================================="
echo "   INSTALLATION DE KONGOS TERMINÉE !"
echo "=========================================="
echo "Tu peux maintenant générer ton ISO dans Cubic."
