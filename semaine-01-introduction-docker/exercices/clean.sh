#!/bin/bash
echo "Arrêt et suppression des conteneurs créés..."
docker stop web cache minimal 2>/dev/null
docker rm web cache minimal 2>/dev/null
