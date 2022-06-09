# LizardWizards
SRE 2022 Capstone Project

Dependencies
To run the project above these dependices are needed:
~~
Azure CLI
https://docs.microsoft.com/en-us/cli/azure/
Docker
https://docs.docker.com/get-docker/
Kubectl
https://kubernetes.io/docs/tasks/tools/
Terraform
https://www.terraform.io/downloads
~~

How to use 
Create a repo and clone files into said repo

Login to azure from your prefered terminal ie GitBash
az login

Next create 4 namespaces that will be used: dev, qa, stage, prod

kubectl create ns dev
kubectl create ns qa
kubectl create ns stage
kubectl create ns prod

Once the namespaces have been created, you will then need to create a cluster by running the terraform files.

terraform init
terraform validate
terraform plan -out tfplan.out
terraform apply tfplan.out

#### Note: The files in this repo will not work without ssh keys. They have been removed from the project for security reasons. If you wish to clone and run the terraform files, you will have to create your own public and private ssh keys and place them in the ssh-keys folder. To do this, you can run the command ssh-keygen -t rsa from a command line. For more detailed information about ssh key pairs, visit https://www.ssh.com/academy/ssh/keygen.

Now that the cluster has been created in azure you will need to login to the cluster:
az aks get-credentials --resource-group aks-rg3 --name aks-cluster

This is where the hard part comes in.
You will now need create and build a pipeline in a azure devops.
To do so go to dev.azure.com and create a project.
Connect the github repo to the to said pipeline.
You will now be able to create release pipelines for each of the previous namespaces dev, qa, stage, prod.

To check to see if the IP is up and running for each namespace run these commands
kubectl get svc -n dev
kubectl get svc -n qa
kubectl get svc -n stage
kubectl get svc -n prod

An EXTERNAL-IP address will pop up under each command. 
Check each IP by <IP-Address>/ping

License
This project is not licensed
