terraform {
  required_version = ">= 1.0"
  backend "local" {}  
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.project
  region = var.region
}

# Data Lake Bucket
resource "google_storage_bucket" "data_lake_bucket" {
  name          = "${local.data_lake_bucket}_${var.project}" # For unique names.
  location      = var.region

  storage_class = var.storage_class
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  force_destroy = true
}

# Data Warehouse
resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.BQ_DATASET
  project    = var.project
  location   = var.region
}

resource "google_bigquery_dataset" "stage_dataset" {
  dataset_id = var.dbt_stg_dataset
  project    = var.project
  location   = var.region
  delete_contents_on_destroy = true
}

resource "google_bigquery_dataset" "prod_dataset" {
  dataset_id = var.dbt_core_dataset
  project    = var.project
  location   = var.region
  delete_contents_on_destroy = true
}