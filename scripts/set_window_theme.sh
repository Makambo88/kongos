#!/bin/bash
# Installe le thème de fenêtre (Aurorae) KongOS

echo "=== Installation du thème de fenêtre KongOS ==="

# 1. Créer le dossier du thème dans KDE
sudo mkdir -p /usr/share/aurorae/themes/KongOS-Aurorae/

# 2. Copier toutes les images et le fichier de configuration
# On suppose que les fichiers sont dans /tmp/kongos-assets/theme/KongOS-Aurorae/
sudo cp /tmp/kongos-assets/theme/KongOS-Aurorae/* /usr/share/aurorae/themes/KongOS-Aurorae/

# 3. Activer le thème par défaut pour KDE
sudo mkdir -p /etc/skel/.config
sudo tee /etc/skel/.config/kwinrc > /dev/null << 'EOF'
[org.kde.kdecoration2]
library=org.kde.kwin.aurorae
theme=__aurorae__svg__KongOS-Aurorae
EOF

echo "=== Thème de fenêtre KongOS installé ==="
