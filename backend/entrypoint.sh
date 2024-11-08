#!/bin/sh

# make sure to run with URL from the environment and to use both the standard
# migrations and the test migrations in /opt/library/migration
java -jar /opt/library/libraryapp-*.jar db.url="${JDBC_URL}" \
    flyway.locations="classpath:db,filesystem:/opt/library/migration"
