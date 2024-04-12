locals {
  data_lake_bucket = "data_lake"
}

variable "project" {
  description = "Your Google Cloud Platform Project ID"
  type = string
  default = "pse-analysis-420121"
}

variable "region" {
  description = "Region for Google Cloud Platform resources."
  type = string
  default = "asia-south1"
}

variable "zone" {
  description = "Zones in your region for Google Cloud Platform"
  type = string
  default = "asia-south1-a"
}

variable "storage_class" {
  description = "Storage class type for your bucket"
  type = string
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "pse_data"
}

variable "dbt_stg_dataset" {
  description = "BigQuery Dataset for storing dbt staging models"
  type = string
  default = "pse_dev"
}

variable "dbt_core_dataset" {
  description = "BigQuery Dataset for storing dbt production models"
  type = string
  default = "pse_prod"
}