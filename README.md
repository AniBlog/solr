Running an Aniblog friendly Solr instance:

```
docker pull solr:8
```

```
docker build -t aniblog/solr:8 .
```

```
docker run --name aniblog-solr \
  --restart unless-stopped \
  --network=aniblog-net \
  -v ./data:/var/solr \
  -p 8983:8983 \
  -d \
  aniblog/solr:8 solr-precreate rss
```

Copy the following files to `./data/data/rss/conf`:

- `db-data-config.xml`
- `managed-schema`
- `solrconfig.xml`

Update `db-data-config.xml` with a database username and password.

Visit http://localhost:8983/solr/#/~cores/rss and reload the core.

Perform a data import http://localhost:8983/solr/#/rss/dataimport//dataimport
