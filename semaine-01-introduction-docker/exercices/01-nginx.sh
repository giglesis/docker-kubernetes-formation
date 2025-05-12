#!/bin/bash
echo "Lancement d'un conteneur Nginx exposé sur le port 8080..."
docker run -d -p 8080:80 --name web nginx
echo "Conteneur Nginx lancé. Visite http://localhost:8080"
