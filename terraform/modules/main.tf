resource "google_artifact_registry_repository" "docker_registry" {
  project       = var.project_id
  location      = var.region
  repository_id = "${var.project_id}-${var.environment}-registry"
  description   = "Docker registry for ${var.environment}"
  format        = "DOCKER"
}

# Permissions pour le CI
resource "google_artifact_registry_repository_iam_member" "ci_writer" {
  project    = var.project_id
  location   = var.region
  repository = google_artifact_registry_repository.docker_registry.name
  role       = "roles/artifactregistry.writer"
  member     = var.ci_principal
}

resource "google_service_account" "ci" {
  account_id   = var.ci_principal
  display_name = "CI Service Account"
}


resource "google_project_iam_member" "ci_roles" {
  for_each = toset([
    "roles/artifactregistry.writer",
    "roles/container.developer",
    "roles/iam.serviceAccountUser",
  ])


  project = var.project_id
  role    = each.key
  member  = "serviceAccount:${google_service_account.ci.email}"
}


resource "google_service_account_key" "ci" {
  count = var.create_key ? 1 : 0


  service_account_id = google_service_account.ci.name
}
