# DOCKER STUDY

### Images: 
- PHP - 8.2
- Postgres - 14
- Redis - 7.2-rc2-bullseye

-----------

To run:

create or clone projects at the same level as this `docker-study` project.

Open `.env.project` and rename the project name and project folder name to your project name

After, run:

`$ make up-project`

To create a new database in postgres, you need the following:

```
$ make psql-project
$ psql -U posgtres
$ create database database_name;
$ exit;
$ \q
```

You can use the `0.0.0.0` host, `postgres` password, and username to connect to your DB Client database.