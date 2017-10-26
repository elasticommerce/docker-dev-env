### Requirements 
 - install docker
 - install docker-compose

### howto start the environment
```bash
docker-compose up -d
```
Please watch and wait until the database container is finished importing the dumps.

### howto reimport the database or reinstall magento
```bash
docker-compose exec cli ./install
```
```bash
watch -n 2 -x docker-compose exec mysql mysql -u root -pmagento -e "show processlist"
```
```
/usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/010-db-schema.sql.gz
/usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/020-db-data.sql.gz
/usr/local/bin/docker-entrypoint.sh: running /docker-entrypoint-initdb.d/999-db_anonimizer.sql
MySQL init process done. Ready for start up.
2017-10-26  9:06:49 140088460658624 [Note] mysqld (mysqld 10.1.19-MariaDB-1~jessie) starting as process 1 ...
```


### usefull commands 
docker-compose exec cli php magento/shell/Update.php
docker-compose exec nodejs node_modules/.bin/grunt build --force


http://localhost:9201/#/overview?host=http:%2F%2Felasticsearch:9200