in terminal:

```sh
docker-compose build
docker-compose run db
```

in a new terminal window:

```
docker ps
docker exec -itu postgres [container_id] psql
```

in psql:

```
CREATE DATABASE record_store;
\c record_store;
CREATE TABLE albums (id serial PRIMARY KEY, name varchar);
CREATE TABLE songs (id serial PRIMARY KEY, name varchar, album_id int);
CREATE DATABASE record_store_test WITH TEMPLATE record_store;
\q
```

in terminal:

```
docker-compose down
docker-compose up --build
```
