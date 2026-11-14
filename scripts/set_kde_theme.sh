#!/bin/bash
# Configure KDE pour utiliser les icônes KongOS par défaut

echo "Configuration du thème KDE..."

# On crée un fichier de configuration par défaut pour les nouveaux utilisateurs
sudo mkdir -p /etc/skel/.config
sudo tee /etc/skel/.config/kdeglobals > /dev/null << 'EOF'
[Icons]
Theme=KongOS
EOF

echo "Thème KDE configuré pour utiliser KongOS."
