#!groovy
import jenkins.model.*
import hudson.security.*

def instance = Jenkins.getInstance()

// Création d'un utilisateur admin par défaut
def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount("admin", "admin")
instance.setSecurityRealm(hudsonRealm)

// Activation de l'authentification par mot de passe
def strategy = new FullControlOnceLoggedInAuthorizationStrategy()
strategy.setAllowAnonymousRead(false)
instance.setAuthorizationStrategy(strategy)

instance.save()
