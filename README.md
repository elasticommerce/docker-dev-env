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
### howto run the update scripts manually
```bash
docker-compose exec cli php htdocs/shell/migration.php
```
### howto flush redis cache
```bash
docker-compose exec cache redis-cli FLUSHALL
```
### howto access database
```bash
docker-compose exec mysql mysql -pmagento -A magento
```
### howto run the elasticommerce indexer
```bash
docker-compose exec cli php htdocs/shell/indexer.php --reindex elasticommerce
```
### tools / access
[Frontend](https://www.elasticommerce.dev/)


[Backend](https://www.elasticommerce.dev/index.php/admin/) (admin -> password123)


[Elasticsearch](http://localhost:9200//)


[Elasticsearch Management](http://localhost:9201/#/overview?host=http:%2F%2Felasticsearch:9200)
