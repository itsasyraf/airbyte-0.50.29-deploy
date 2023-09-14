#!/bin/bash

git clone https://github.com/itsasyraf/airbyte-0.50.29.git
git clone https://github.com/itsasyraf/airbyte-0.50.29-conf.git
cd airbyte-0.50.29
./run-ab-platform.sh -b
docker compose down
cd ..
cp ./airbyte-0.50.29-conf/.env ./airbyte-0.50.29/.env
cp ./airbyte-0.50.29-conf/docker-compose.yml ./airbyte-0.50.29/docker-compose.yml
cd airbyte-0.50.29
./run-ab-platform.sh -b
cd ..
rm -fr ./airbyte-0.50.29
mkdir airbyte-0.50.29
touch ./airbyte-0.50.29/docker-compose.yml
cp ./airbyte-0.50.29-conf/docker-compose.yml ./airbyte-0.50.29/docker-compose.yml
rm -fr ./airbyte-0.50.29-conf

