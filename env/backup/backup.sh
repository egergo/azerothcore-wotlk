#!/bin/bash -ex

while true
do
  echo "Waiting 30 secs before backup..."
  sleep 30

  echo "Dumping acore_auth..."
  mysqldump -h ac-database --password="$MYSQL_ROOT_PASSWORD" acore_auth | gzip > /backup/acore_auth.sql.gz

  echo "Dumping acore_characters..."
  mysqldump -h ac-database --password="$MYSQL_ROOT_PASSWORD" acore_characters | gzip > /backup/acore_characters.sql.gz

  echo "Sleeping for an hour..."
  sleep 3600
done
