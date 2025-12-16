TP FINAL 

History des deux terminaux.
1: Konsole
2: Kate
_________________________

[2025-12-15 10:44:46] terraform init
 1731  [2025-12-15 10:44:52] cd modules/
 1732  [2025-12-15 10:44:58] terraform init
 1733  [2025-12-15 10:55:30] cd ARCHI_CLOUD/final/
 1734  [2025-12-15 10:55:51] gcloud auth application-default login
 1735  [2025-12-15 10:58:24] gcloud iam service-accounts list
 1736  [2025-12-15 10:59:02] gcloud iam service-accounts list --project-instance="archi-cloud-final"
 1737  [2025-12-15 10:59:11] gcloud iam service-accounts list --project="archi-cloud-final"
 1738  [2025-12-15 10:59:32] gcloud beta interactive
 1739  [2025-12-15 10:59:48] gcloud feedback
 1740  [2025-12-15 11:00:31] gcloud --help
 1741  [2025-12-15 11:01:14] gcloud --project=archi-cloud-final
 1742  [2025-12-15 11:01:25] gcloud --project="archi-cloud-final"
 1743  [2025-12-15 11:02:41] gcloud auth application-default set-quota-project
 1744  [2025-12-15 11:03:02] gcloud auth application-default set-quota-project archi-cloud-final
 1745  [2025-12-15 11:04:33] gcloud iam service-accounts create mederic.marquie@ynov.com   --description="main account"   --display-name="mederic"
 1746  [2025-12-15 11:07:07] gcloud iam service-accounts list
 1747  [2025-12-15 11:13:35] gcloud iam --help
 1748  [2025-12-15 11:14:11] gcloud iam service-accounts --help
 1749  [2025-12-15 11:14:42] gcloud iam service-accounts list --project=archi-cloud-final
 1750  [2025-12-15 11:23:50] gcloud services enable artifactregistry.googleapis.com
 1751  [2025-12-15 14:22:09] gcloud iam service-accounts create mederic.marquie@ynov.com   --description="main account"   --display-name="mederic"
 1752  [2025-12-15 14:23:45] gcloud iam service-accounts create svc-archi-cloud   --description="main account"   --display-name="mederic"
 1753  [2025-12-15 14:26:18] gcloud projects add-iam-policy-binding archi-cloud-final   --member="serviceAccount:svc-archi-cloud@archi-cloud-final.iam.gserviceaccount.com"   --role="roles/iam.devOps"
 1754  [2025-12-15 14:26:54] gcloud iam service-accounts add-iam-policy-binding   svc-archi-cloud@archi-cloud-final.iam.gserviceaccount.com   --member="user:mederic.marquie@ynov.com"   --role="roles/iam.serviceAccountUser"
 1755  [2025-12-15 14:51:06] gcloud artifacts repositories list   --location=europe-west1   --project=my-gcp-project
 1756  [2025-12-15 14:51:39] gcloud artifacts repositories get-iam-policy   my-gcp-project-dev-registry   --location=europe-west1   --project=archi-cloud-infra
 1757  [2025-12-15 15:48:15] gcloud projects add-iam-policy-binding archi-cloud-infra   --member="user:mederic.marquie@ynov.com"   --role="roles/artifactregistry.admin"
 1758  [2025-12-15 15:51:21] gcloud auth list
 1759  [2025-12-15 15:56:40] gcloud config set account mederic.marquie@ynov.com
 1760  [2025-12-15 15:56:50] gcloud projects get-iam-policy archi-cloud-infra
 1761  [2025-12-15 16:13:35] gcloud projects list
 1762  [2025-12-15 16:13:48] gcloud projects describe archi-cloud-infra
 1763  [2025-12-15 16:14:48] gcloud config set project archi-cloud-final
 1764  [2025-12-15 16:15:03] gcloud projects get-iam-policy archi-cloud-final
 1765  [2025-12-15 16:17:58] gcloud projects add-iam-policy-binding archi-cloud-final   --member="user:mederic.marquie@ynov.com"   --role="roles/artifactregistry.admin"
 1766  [2025-12-15 16:18:25] gcloud artifacts repositories get-iam-policy   my-gcp-project-dev-registry   --location=europe-west1   --project=archi-cloud-final
 1767  [2025-12-15 16:19:36] gcloud artifacts repositories list   --location=europe-west1   --project=archi-cloud-final
 1768  [2025-12-15 16:19:51] history
micheluther@michelDeskTek:~/ARCHI_CLOUD/final$ gcloud iam service-accounts create svc-archi-final   --description="main account"   --display-name="svc-archi"
Created service account [svc-archi-final].
micheluther@michelDeskTek:~/ARCHI_CLOUD/final$ gcloud projects add-iam-policy-binding archi-cloud-final \
  --member="serviceAccount:svc-archi-final@archi-cloud-final.iam.gserviceaccount.com" \
  --role="roles/iam.devOps"
Updated IAM policy for project [archi-cloud-final].
bindings:
- members:
  - user:mederic.marquie@ynov.com
  role: roles/artifactregistry.admin
- members:
  - serviceAccount:service-373173358208@gcp-sa-artifactregistry.iam.gserviceaccount.com
  role: roles/artifactregistry.serviceAgent
- members:
  - serviceAccount:svc-archi-cloud@archi-cloud-final.iam.gserviceaccount.com
  - serviceAccount:svc-archi-final@archi-cloud-final.iam.gserviceaccount.com
  - user:mederic.marquie@ynov.com
  role: roles/iam.devOps
- members:
  - user:mederic.marquie@ynov.com
  role: roles/owner
etag: BwZF_zbZJbE=
version: 1

_________________________

 1653  [2025-12-15 16:16:31] terraform init
 1654  [2025-12-15 16:16:38] terraform plan
 1655  [2025-12-15 16:25:27] terraform apply
 1656  [2025-12-15 16:26:01] gcloud artifacts repositories get-iam-policy   archi-cloud-final-dev-registry   --location=europe-west1   --project=archi-cloud-final
 1657  [2025-12-15 16:33:01]  cd /home/micheluther/ARCHI_CLOUD/final

_________________________


