# Create DB

build both containers and run the db container only:

```sh
docker-compose build
docker-compose run db
```

in a different terminal window, open psql on the running db container:

```
docker ps
docker exec -itu postgres [db_container_id] psql
```

in psql, create the db and test db:

```
CREATE DATABASE record_store;
\c record_store;
CREATE TABLE albums (id serial PRIMARY KEY, name varchar);
CREATE TABLE songs (id serial PRIMARY KEY, name varchar, album_id int);
CREATE DATABASE record_store_test WITH TEMPLATE record_store;
\q
```

clean up:

```
docker-compose down
```

# Start Sinatra

```
docker-compose up --build
```

# Run tests

```
docker-compose up --build
docker ps
docker exec -it [web_container_id] rspec
```
