#!/bin/bash
# Active les effets visuels de KongOS (Flou, transparence)

echo "Configuration des effets visuels de KongOS..."

# On modifie la configuration de KWin (gestionnaire de fenêtres KDE)
# On force l'activation du flou sur les fenêtres
mkdir -p /etc/skel/.config
cat > /etc/skel/.config/kwinrc << 'EOF'
[Plugins]
blurEnabled=true
contrastEnabled=true
translucencyEnabled=true

[Effect-Blur]
blurStrength=8
noiseStrength=2

[Effect-Translucency]
activeWindowOpacity=95
inactiveWindowOpacity=90
