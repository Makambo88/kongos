#!/bin/bash
# Active l'affichage des astérisques pour les mots de passe dans le terminal

echo "Activation du feedback visuel pour les mots de passe..."
echo "Defaults pwfeedback" | sudo tee /etc/sudoers.d/kongos_pwfeedback > /dev/null
sudo chmod 440 /etc/sudoers.d/kongos_pwfeedback
echo "Feedback visuel activé."
