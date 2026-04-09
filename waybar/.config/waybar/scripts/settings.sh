#!/bin/bash

# Menu avec wofi
CHOICE=$(echo -e "Wifi\nImprimante\nSon\nLook" | wofi --dmenu --prompt="Paramètre")

# Exécuter la commande selon le choix
case "$CHOICE" in
    "Wifi")
        kitty impala   # Ou `impala` si tu l'as installé pour gérer le wifi
        ;;
    "Imprimante")
        system-config-printer  # Ou une autre commande de gestion d'imprimante
        ;;
    "Son")
        pavucontrol
        ;;
    "look")
        nwg-look
        ;;
    *)
        echo "Option non reconnue"
        ;;
esac
