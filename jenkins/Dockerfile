# Utilisation de l'image officielle de Jenkins LTS
FROM jenkins/jenkins:lts

# Exposer les ports pour Jenkins
EXPOSE 9090 50000

# Copier le fichier des plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# Copier le fichier Groovy d'initialisation
COPY setup_admin.groovy /usr/share/jenkins/ref/init.groovy.d/

# Installer les plugins Jenkins
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

# Point d'entrée
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/local/bin/jenkins.sh"]

