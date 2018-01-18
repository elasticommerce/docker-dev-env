### Requirements 
 - install docker
 - install docker-compose

### set up the repos
```bash
git clone git@bitbucket.org:elasticommerce/elasticommerce-base.git src/elasticommerce-base
git clone git@bitbucket.org:elasticommerce/elasticommerce-magento.git .modman/elasticommerce-magento
```

### howto start the environment
```bash
docker-compose up -d
```

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

### how to run unit tests
```bash
bin/phpunit -c src/elasticommerce-base/phpunit.xml --testsuite=unit
```

### tools / access
[Frontend](https://www.elasticommerce.dev/)


[Backend](https://www.elasticommerce.dev/index.php/admin/) (admin -> password123)


[Elasticsearch](http://localhost:9200/)


[Elasticsearch Management](http://localhost:9201/)
