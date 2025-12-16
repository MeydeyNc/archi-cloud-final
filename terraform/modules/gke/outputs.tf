output "cluster_name" {
value = google_container_cluster.this.name
description = "Nom du cluster GKE"
}


output "cluster_endpoint" {
value = google_container_cluster.this.endpoint
description = "Endpoint du cluster"
}


output "kubeconfig_command" {
value = "gcloud container clusters get-credentials ${google_container_cluster.this.name} --region ${var.region} --project ${var.project_id}"
}
