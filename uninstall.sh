#!/bin/bash

# 1. Arrêter les conteneurs en cours d'exécution
echo "Arrêt des conteneurs..."
docker-compose down

# 2. Supprimer les volumes associés aux conteneurs
echo "Suppression des volumes Docker..."
docker volume prune -f

# 3. Supprimer les réseaux Docker créés par Docker Compose
echo "Suppression des réseaux Docker..."
docker network prune -f

# 4. Afficher un message de fin
echo "Nettoyage terminé !"

docker system prune --volumes  
