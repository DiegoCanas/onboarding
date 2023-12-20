ONBOARDING CAPGEMINI


Git
Tasks:
Create a fork of Jump the queue
Give permissions to the mentor
Protect masterbranch to only allow pull requests
Direct pushes to masterbranch shouldn´t be allowed
Create a developbranch where to work
Courses:
https://learngitbranching.js.org/?locale=es_ES

Linux
Prerequesites:
Install WSL with Ubuntu
Tasks:
Basic tools (cd, ls, mkdir, cut, jq, sed, cat, grep, chmod, chown, touch, echo, cat, awk)
Shell scripting:
Script 1: Change all words in a file that match the parameters. Example: replacewords.sh file.txt wordToReplace wordToBeReplacedWith
Script 2: For all logged in users, show their real names and the time and date of their last login.
Script 3: Gather all users in the system. Show only the first 5 users alphabetically. The last one logged in has to be removed. Print the name of the user removed and the date he logged last.
Create a folder on the Github repository called linuxScriptsto store the previous scripts
Courses

Docker
Tasks:
Create Docker images:
JTQ Frontend image
JTQ Backend image
Launch JTQ FE and BE and check that it works
Launch JTQ with Docker-compose in a specific network with volumes
Launch JTQ with Docker-compose and a reverse-proxy
Courses

Kubernetes
Tasks:
Launch minikube or rancher
Launch JTQ:
Deployment FE and deployment BE
Expose those deployments
Create routing with Ingress resource

CICD (Local)
Tasks:
What is CICD and difference between Continuous Deployment and Continuous Delivery
Setup a CICD process with Jenkins, SonarQube and Nexus
Create a Jenkins container pointing to the Github repo with 2 pipelines
The first pipeline will build, test, lint and run SonarQube analysis once a pull request is created to the mainbranch
The second pipeline will be triggered when a new push is done in the main branch and will build a new Docker image and push it to Nexus

CICD (Cloud)
Tasks:
Setup the previous task but using Github Action, SonarCloud and Github packages
Instead of creating two pipelines in Jenkins, create them on Github Actions. These pipelines will have the same trigger condition as the previous ones
Instead of using a SonarQube instance, use SonarCloud to run analysis
Instead of pushing to a local Nexus instance, push it to Github packages

Monitoring 
Tasks:
Install Helm
Deploy Grafana, Prometheus, Loki
From Grafana, query logs and metrics
