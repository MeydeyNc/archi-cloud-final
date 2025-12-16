resource "google_container_cluster" "this" {
  name     = var.cluster_name
  location = var.region
  project  = var.project_id


  enable_autopilot = var.autopilot


  networking_mode = "VPC_NATIVE"


  release_channel {
    channel = "REGULAR"
  }


  deletion_protection = false


  workload_identity_config {
    workload_pool = "${var.project_id}.svc.id.goog"
  }
}


resource "google_container_node_pool" "default" {
  count = var.autopilot ? 0 : 1


  name     = "default-pool"
  cluster  = google_container_cluster.this.name
  location = var.region


  node_count = var.node_count


  node_config {
    machine_type = var.machine_type


    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}
