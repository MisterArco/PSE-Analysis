# Philippine Stock Exchange Analysis

## Project Overview

The Philippine Stock Exchange (PSE) is a vital component of the country's financial landscape, offering investors a platform to trade equities, bonds, and other securities. This project aims to conduct comprehensive analytics on PSE data to derive insights, trends, and patterns that can inform investment strategies, risk management decisions, and market behavior understanding.

This project will design and implement an ETL (Extract, Transform, Load) pipeline using a suite of modern data engineering technologies. The pipeline will automate the extraction of data from various sources, transform it into a usable format, and load it into a cloud-based data warehouse for analysis. By leveraging these technologies, this aims to streamline data processing workflows, ensure data integrity, and enable efficient analytics and reporting.

## Dataset

The dataset is sourced from Kaggle, focusing on OHLCV (Open, High, Low, Close, Volume) stock data from the Philippines Stock Exchange. This dataset provides historical market information, including price movements and trading volumes for various stocks listed on the exchange. With this data, we aim to analyze trends and patterns to better understand the dynamics of the Philippine stock market

## Technologies Used

- **Apache Airflow:**
  - Orchestration tool for managing and scheduling data pipelines.

- **Docker:**
  - Containerization platform for packaging applications and dependencies.

- **Terraform:**
  - Infrastructure as code (IaC) tool for provisioning and managing cloud resources.

- **dbt (Data Build Tool):**
  - Analytics engineering tool for transforming and modeling data in the cloud data warehouse.

- **Google Cloud Storage and BigQuery:**
  - Cloud storage and data warehousing solutions for storing and analyzing large datasets.

- **Google Data Studio:**
  - Visualization and reporting tool for creating interactive dashboards and reports.

## Run the Pipeline

# Prerequisites

Before you can start working with this project, ensure you have the following prerequisites installed and set up:

### 1. Google Cloud Platform (GCP) Account

You'll need a GCP account to use Google Cloud services such as Google Cloud Storage, BigQuery, and Data Studio. If you don't have a GCP account, you can sign up for free [here](https://cloud.google.com/free).

### 2. Terraform

Terraform is used for provisioning and managing cloud infrastructure.

#### Installation Instructions:

- Download the appropriate Terraform package for your operating system from the [official website](https://www.terraform.io/downloads.html).
- Extract the downloaded package and add the Terraform binary to your system's PATH.
- Verify the installation by running `terraform --version` in your terminal.

### 3. Docker

Docker is a containerization platform used for packaging applications and dependencies.

#### Installation Instructions:

- Install Docker Desktop for your operating system by following the instructions in the [official documentation](https://docs.docker.com/get-docker/) or from [DE ZOOMCAMP](https://github.com/DataTalksClub/data-engineering-zoomcamp).
- Once installed, verify Docker installation by running `docker --version` in your terminal.

### 4. dbt (Data Build Tool)

dbt is an analytics engineering tool used for transforming and modeling data in the cloud data warehouse.

#### Installation Instructions:

- Install dbt by following the instructions in the [official documentation](https://docs.getdbt.com/dbt-cli/installation) or from [DE ZOOMCAMP](https://github.com/DataTalksClub/data-engineering-zoomcamp).
- Verify the installation by running `dbt --version` in your terminal.

### 5. Apache Airflow

Apache Airflow is an orchestration tool used for managing and scheduling data pipelines.

#### Installation Instructions:

- Install Apache Airflow by following the instructions in the [official documentation](https://airflow.apache.org/docs/apache-airflow/stable/start/local.html) or from the [DE ZOOMCAMP](https://github.com/DataTalksClub/data-engineering-zoomcamp).
- Choose the installation method that best suits your environment (e.g., using pip, Docker, or using a pre-packaged installation).
