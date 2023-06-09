# Northwind Dataset

## Installation

Install the following prerequisites before proceeding further:

* [Docker Engine](https://docs.docker.com/engine/)
* [Docker Compose](https://docs.docker.com/compose/)
* [MongoDB Compass](https://www.mongodb.com/try/download/compass)

If the above requirements or alternatives are met,
  - Start by firing up the docker containers.
  ```bash
    cd ./cloned-directory
    docker-compose up -d
  ```
  This should visually notify that the containers are up and running.
  After a few seconds, check with `docker ps -a` whether everything is running as expected.


### Postgres

**Show Tables**:

```postgres
SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';
```

#### Connect PgAdmin

* Access to PgAdmin at the url: [http://localhost:5050](http://localhost:5050)
* Add a new server in PgAdmin, giving your credentials.

#### Files & persistence

Your modifications to the postgres database(s) will be persisted in the *postgresql_data* docker volume, and can be retrieved once you restart docker compose up.

If you need to delete the database data, run `docker-compose down -v` (the database will then be repopulated from scratch when running `docker-compose up -d`).

If you need to upload any files into your db container, just copy and paste them to the `files` local folder. They will be available at the `/files` path inside the db container.


### MongoDB

* Launch MongoDB Compass
* Connect to the MongoDB docker instance 
* Read the MongoDB instructions in the `mongodb-northwind` directory of this repo.

### Neo4J

* Go to [http://localhost:7474](http://localhost:7474/)
    - No Login Credentials required.
    - Connect to the Database.
    - On the top query field, type `:play northwind graph` and execute the cell.
* [Neo4J Official Documentation - Northwind](https://neo4j.com/docs/getting-started/appendix/tutorials/guide-import-relational-and-etl/)
