# Data Transformation via dbt in PostgreSQL Databases (Dockerized)

## 🌟 Project Overview

This project demonstrates an end-to-end **data transformation pipeline** using **dbt** within **PostgreSQL** databases, all contained in a **Dockerized environment**. The main focus is on efficiently extracting, transforming, and loading (ELT) data by leveraging dbt to clean, structure, and generate insights from raw data in PostgreSQL.

By combining Docker for containerized databases and dbt for transformations, this project highlights a scalable approach to data transformation workflows.

---

## 🔑 Key Highlights
- **Extract**: Data is pulled from the source PostgreSQL database.
- **Transform**: Data is cleaned, restructured, and transformed using dbt to prepare it for analysis in the destination PostgreSQL database.
- **Load**: Raw data is initially stored in intermediary SQL files before being transformed and loaded into the target database.

---

## 🛠️ Tools & Technologies

- **SQL**: Used for querying and managing data within PostgreSQL databases.
- **Docker**: Managed isolated PostgreSQL databases in containers for both source and destination.
- **PostgreSQL**: Utilized as the relational database for both OLTP (source) and OLAP (destination).
- **dbt**: Transformed and modeled data across different layers in the ELT process.
- **Python**: Automated the database connection, data dumping, and loading processes via a custom script.

---

## 📚 Key Skills Demonstrated
- **Database Management with Docker**: Set up and managed PostgreSQL databases in a containerized Docker environment.
- **Data Transformation with dbt**: Applied data transformations and modeling using dbt.
- **SQL Optimization**: Implemented efficient SQL queries to extract, load, and manipulate data.
- **Containerization**: Orchestrated Docker containers for seamless development and testing.
- **PostgreSQL Expertise**: Enhanced understanding of PostgreSQL for both transactional and analytical use cases.

---

## 🚀 Project Structure

### Architecture Overview
- **Docker Environment**: Two separate PostgreSQL databases (source and destination) running in individual Docker containers.
- **ELT Process**:
  - **Extract**: Pulled raw data from the source PostgreSQL database.
  - **Load**: Stored intermediary data in SQL tables for further analysis.
  - **Transform**: Leveraged dbt to clean and transform raw data before loading it into the destination PostgreSQL database.

### ELT Breakdown
- **Extract**: Pulled data from the source PostgreSQL database.
- **Load**: Saved intermediary SQL tables for analysis.
- **Transform**: Used dbt to apply transformations and clean the data before loading it into the destination database.

---

## 📂 Folder Structure

```bash
├── custom_postgres                         # dbt project
│   ├── dbt_project.yml                     # dbt project configuration
│   ├── macros                              # Custom dbt macros
│   ├── models/example                      # dbt models and configurations
│       ├── models.sql                      # All model files
│       ├── example.yml                     # Source configurations
├── source_db_init
│   ├── init.sql                            # SQL file for initializing the source database
├── elt
│   ├── Dockerfile                          # Dockerfile to set up the ELT environment
│   ├── elt_script.py                       # Python ELT script for database connections
├── logs
│   ├── dbt.log                             # dbt transformation logs
├── docker-compose.yml                      # Docker-Compose setup for both source and destination databases
```


## 🚀 Getting Started

### Prerequisites
- Docker
- dbt
- PostgreSQL

### Steps to Run the Project
1. Clone this repository:
  ```bash
   git clone https://github.com//shiza16/end-to-end-dbt-intro-pipeline.git
  ```
   
2. Set up a virtual environment for dbt:

  ```bash
    python -m venv dbt-env
    dbt-env\Scripts\activate
    pip install dbt-core==1.6.2 dbt-postgres==1.6.2
  ```

3. Navigate to the project directory and run the Docker environment:
  ```bash
    docker-compose up
  ```

4. Execute the ELT Python script:

  ```bash
    python elt/elt_script.py
  ```

5. Use dbt to run transformations:

  ```bash
    cd custom_postgres
    dbt run
  ```

6. Access the destination PostgreSQL container:

  ```bash
    docker exec -it dbt_end_to_end_pipeline-destination_postgres-1 psql -U postgres destination_db
  ```

7. Run SQL queries to verify data:

  ```bash
    select * from actors;
  ```

8. Shut down Docker containers and remove volumes:
  ```bash
     docker-compose down -v
  ```

-------------

## 🛠️ Troubleshooting
* Ensure Docker is running, and both PostgreSQL containers are up and accessible.
* Review the dbt.log file for any dbt-related issues during transformations.

  
