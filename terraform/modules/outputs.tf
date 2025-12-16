output "registry_url" {
  description = "URL du Docker Artifact Registry"
  value       = "${var.region}-docker.pkg.dev/${var.project_id}/${google_artifact_registry_repository.docker_registry.repository_id}"
}

output "service_account_email" {
  value       = google_service_account.ci.email
  description = "Email du Service Account CI"
}


output "service_account_roles" {
  value = [
    "roles/artifactregistry.writer",
    "roles/container.developer",
    "roles/iam.serviceAccountUser",
  ]
}


output "service_account_key" {
  value       = var.create_key ? google_service_account_key.ci[0].private_key : null
  sensitive   = true
  description = "Clé JSON encodée en base64 (si créée)"
}
