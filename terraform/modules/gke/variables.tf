variable "project_id" {
  type        = string
  description = "ID du projet GCP"
  default     = "archi-cloud-final"
}


variable "region" {
  type        = string
  description = "Région GCP (doit matcher Artifact Registry)"
  default     = "europe-west1"
}


variable "cluster_name" {
  type    = string
  default = "final-app-cluster"
}


variable "autopilot" {
  type        = bool
  description = "Activer GKE Autopilot"
  default     = true
}


variable "node_count" {
  type    = number
  default = 1
}


variable "machine_type" {
  type    = string
  default = "e2-small"
}
