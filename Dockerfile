FROM solr:8
USER root
COPY mysql-connector-j-8.1.0.jar /opt/solr/server/solr-webapp/webapp/WEB-INF/lib
RUN chown -R $SOLR_USER:$SOLR_USER /opt/solr/server/solr-webapp/webapp/WEB-INF/lib/mysql-connector-j-8.1.0.jar
USER $SOLR_USER
