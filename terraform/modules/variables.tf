variable "project_id" {
  description = "ID du projet GCP"
  type        = string
  default     = "archi-cloud-final"
}

variable "environment" {
  description = "Environnement (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Région GCP"
  type        = string
  default     = "europe-west1"
}

variable "ci_principal" {
  description = "Principal IAM du CI (ex: serviceAccount:xxx ou user:xxx)"
  type        = string
  default     = "serviceAccount:svc-archi-final@archi-cloud-final.iam.gserviceaccount.com"
}

variable "create_key" {
  type        = bool
  description = "Créer une clé JSON (false = Workload Identity)"
  default     = false
}
