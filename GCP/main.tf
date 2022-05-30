terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:\Users\singhab3\Downloads\dcgsalesbangalore-11729444-18c0dfa6a21b.json")

  project = "dcgsalesbangalore-11729444"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

