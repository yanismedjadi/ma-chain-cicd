FROM gitlab/gitlab-ce:latest

# Ajout du script de configuration au conteneur
COPY configure_gitlab.sh /usr/local/bin/configure_gitlab.sh
RUN chmod +x /usr/local/bin/configure_gitlab.sh

ENTRYPOINT ["sh", "/usr/local/bin/configure_gitlab.sh"]
CMD ["/assets/wrapper"]
