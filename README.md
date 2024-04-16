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

### Prerequisites

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

### After installing all the prerequisites, follow these steps.

1. **Clone the Repository**: Clone this repository to your local machine using the following command:
    ```bash
    git clone https://github.com/MisterArco/PSE-Analysis.git
    ```

2. **Set Up GCP Authentication**: Configure authentication for Google Cloud Platform by following the instructions [here](https://cloud.google.com/docs/authentication/getting-started).

3. **Initialize Terraform**: Navigate to the `terraform` directory and initialize Terraform by running the following command:
    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

    This will create all the datasets that you need in order to run the pipeline.

5. **Build Docker Images**: Build the Docker images for the project by navigating to the relevant directories and running `docker build` commands or you can build the image inside your IDE.

6. **Start Apache Airflow**: Start Apache Airflow by doing `docker-compose up`.

7.  **Deploy the Data Pipeline**: Run the dags located inside the dags folder. This will ingest the data to the Google Cloud Storage, and from there to BigQuery.

8. **Run dbt Models**: Run dbt models to transform and model data inside Google Bigquery. Navigate to the `dbt` directory and run the appropriate dbt commands.
   
9. **Monitor and Manage the Data Pipeline**: Use Apache Airflow to monitor and manage the data pipeline tasks and workflows.

### Errors

If you encountered any errors, please email me at jpbasilio26@gmail.com.
