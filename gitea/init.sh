#!/bin/bash
# Création de l'utilisateur administrateur
echo "Création du compte administrateur..."
#docker exec -it gitea /bin/bash -c "gitea admin user create --username yanis --password 'rootpassword' --email yanis@example.com --admin"
# Vérification si l'utilisateur est créé
echo "Utilisateur administrateur créé avec succès"

# Création d'un dépôt via l'API Gitea
curl -X POST -H "Content-Type: application/json" \
  -u "rootadmin:rootpassword" \
  -d '{"name": "my-new-repo", "private": false, "description": "Mon nouveau dépôt Gitea"}' \
  http://localhost:3000/api/v1/user/repos

