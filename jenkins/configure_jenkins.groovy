import jenkins.model.*
import hudson.plugins.git.*

println("Configuring Jenkins...")

// Ajouter une connexion GitLab
def gitlab = new hudson.plugins.git.GitSCMSource("gitlab")
gitlab.credentialsId = "gitlab-token"
gitlab.remote = "http://gitlab.local"

// Créer un job pipeline
def jobName = "GitLab-Pipeline"
def pipelineJob = Jenkins.instance.createProject(hudson.model.FreeStyleProject, jobName)
pipelineJob.setDescription("Pipeline pour GitLab")
pipelineJob.save()

println("Configuration terminée.")

