Projet Google Cloud — Utilisant flask, docker, terraform, GKE, CI/CD

Ce projet démontre une architecture DevOps complète pour déployer une application Flask sur Google Cloud Platform avec Kubernetes, Infrastructure as Code et CI/CD.

### 1. Premiers pas. 

**Connexion à GCP**
gcloud auth login
gcloud config set project archi-cloud-final

**Ne pas oublier d'activer les APIs nécessaires**
gcloud services enable container.googleapis.com
gcloud services enable artifactregistry.googleapis.com
gcloud services enable iam.googleapis.com

### 2. On se lance ensuite sur l'infra terraform

cd terraform

** Ajuster les variables**
cp terraform.tfvars.example terraform.tfvars

**Éditer terraform.tfvars avec les bonnes valeurs**

**Initialiser et appliquer**
terraform init
terraform plan
terraform apply

### 3. Création du Docker avec des tests en local.

cd app

**On build l'image**
docker build -t app .

**Test en local**
docker run -p 8080:8080 app

**Vérifier sur http://localhost:8080**

### 4. Upload vers l'Artifact Registry

**Configurer Docker pour Artifact Registry**
gcloud auth configure-docker europe-west1-docker.pkg.dev

**Tag et push**
docker tag app europe-west1-docker.pkg.dev/archi-cloud-final/flask-api/app:latest
docker push europe-west1-docker.pkg.dev/archi-cloud-final/flask-api/app:latest

### 5. Création du cluster Kube

**Créer le cluster**
gcloud container clusters create final-app-cluster \
  --zone=europe-west1-b \
  --num-nodes=2 \
  --machine-type=e2-small

**Obtenir les credentials**
gcloud container clusters get-credentials final-app-cluster --zone=europe-west1-b

### 6. On déploie avec Kube

cd k8s

**Remplacer archi-cloud-final dans deployment.yaml**
sed -i 's/archi-cloud-final/g' deployment.yaml

**Appliquer les manifests**
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

**Vérifier le déploiement**
kubectl get pods
kubectl get services

**Obtenir l'IP externe**
kubectl get service flask-service -w

### 7. On va gérer la CI/CD 

*Je n'ai pas pu m'occuper de cette partie à cause de diverses difficultés avec Github... Cependant voici en théorie ce que je souhaitais faire*

**Initialiser Git**
git init
git add .
git commit -m "Initial commit"

**Lier au repo GitHub**
git remote add origin https://github.com/USERNAME/REPO.git
git branch -M main
git push -u origin main

Gestion des secrets github.

Générer la clé du Service Account

**Il faut créer la clé JSON**
gcloud iam service-accounts keys create key.json \
  --iam-account=cicd-service-account@archi-cloud-final.iam.gserviceaccount.com

**Copier le contenu pour GitHub Secrets**
cat key.json

**Vérifier les pods**
kubectl get pods -l app=flask

**Vérifier les logs**
kubectl logs -l app=flask

**Obtenir l'URL externe**
kubectl get service flask-service

**Tester l'application**
curl http://EXTERNAL_IP/
curl http://EXTERNAL_IP/health
curl http://EXTERNAL_IP/ready

On est bon normalement ! Bon courage :) 
