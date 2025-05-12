#!/bin/bash
echo "Lancement d'un conteneur Redis..."
docker run -d --name cache redis
echo "Conteneur Redis prêt à l'emploi."
