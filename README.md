# Multi-Database Docker Compose Environment

This repository provides a multi-database environment configured with Docker Compose. It includes several database services along with their respective GUIs, all using a unified set of credentials for easy management.

## Overview

The setup includes the following services:

- **MySQL** with **phpMyAdmin**
- **PostgreSQL (with pgvector extension)** with **pgAdmin**
- **Oracle XE** with **Adminer**
- **MongoDB** with **Mongo Express**

All services use the following default credentials:
- **Username:** `root`
- **Password:** `root`
- **Database Name:** `db` (where applicable)

Data for each service is persisted in a dedicated folder under the `./volumes` directory.

## Services Details

### MySQL
- **Image:** `mysql:8`
- **Port:** `3306`
- **GUI:** phpMyAdmin available at [http://localhost:8081](http://localhost:8081)
- **Data Directory:** `./volumes/mysql`

### PostgreSQL (with pgvector)
- **Image:** `ankane/pgvector:latest`
- **Port:** `5432`
- **GUI:** pgAdmin available at [http://localhost:8082](http://localhost:8082)
- **Data Directory:** `./volumes/postgres`

### Oracle XE
- **Image:** `gvenzl/oracle-xe:18-slim`
- **Port:** `1521`
- **GUI:** Adminer available at [http://localhost:8083](http://localhost:8083)
- **Data Directory:** `./volumes/oracle`

### MongoDB
- **Image:** `mongo:latest`
- **Port:** `27017`
- **GUI:** Mongo Express available at [http://localhost:8084](http://localhost:8084)
- **Data Directory:** `./volumes/mongodb`

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your machine.
- [Docker Compose](https://docs.docker.com/compose/install/) installed.

## Getting Started

1. **Clone the Repository**

   Clone this repository to your local machine and navigate to its directory:

   ```bash
   git clone <repository-url>
   cd <repository-directory>

2. **Create the Volume Directories**

   Create the necessary directories to store your database data:

```bash
mkdir -p volumes/mysql volumes/postgres volumes/oracle volumes/mongodb
```

3. **Start the Service**

    Use Docker Compose to build and start all the services in detached mode:

4. **Access the GUIs**

- phpMyAdmin (MySQL): http://localhost:8081
- pgAdmin (PostgreSQL): http://localhost:8082
- Adminer (Oracle XE): http://localhost:8083
- Mongo Express (MongoDB): http://localhost:8084

5. **Connect to the Database**

    Use the following connection details:

        - Username: root
        - Password: root
        - Database Name: db (where applicable)
        - Host: Use the service name (e.g., mysql, postgres, oracle, mongodb) within the Docker network or localhost with the respective port if connecting externally.

**Notes**

All services are configured with restart: always to ensure they automatically restart if they stop unexpectedly.
The PostgreSQL service uses the ankane/pgvector image, which comes with the pgvector extension preinstalled.
The Oracle XE container may take several minutes to fully initialize on the first run.
Feel free to adjust environment variables, port mappings, and volume paths as needed.