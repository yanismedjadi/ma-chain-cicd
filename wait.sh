#!/bin/bash
# Commentaire ici
# Adresse du container GitLab
CONTAINER_NAME="gitlab"
# Liste des ports à vérifier
PORTS=("80")

# Attente jusqu'à ce que GitLab soit prêt
echo "En attente que GitLab soit prêt..."
until docker exec "$CONTAINER_NAME" netstat -tuln | grep -E "0.0.0.0:(${PORTS[*]// /|})"; do
    echo "GitLab n'est pas encore prêt, on attend..."
    sleep 5
done

echo "GitLab est prêt !"

