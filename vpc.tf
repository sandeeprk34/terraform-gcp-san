provider "google" {
  version = "3.5.0"
  credentials = file("/home/sandeeprk567/terraform/terraform.json")
  project = "mystic-impulse-245222"
}
resource "google_compute_network" "vpc_network" {
  name = "san-network"
}
resource "google_compute_subnetwork" "public-subnetwork" {
  name          = "san-subnetwork"
  network       = google_compute_network.vpc_network.name
