#!/bin/bash

# Navigate to the directory where your docker-compose.yml file is located
#cd /path/to/your/app
docker pull mysql
docker network create springboot-mysql-net
docker run --name mysqldb --network springboot-mysql-net -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=dbtsovrflo -d mysql
docker build -t springboot-restful-webservices .
docker run --network springboot-mysql-net --name springboot-mysql-container -p 8080:8080 springboot-restful-webservices
# Start the Docker application using docker-compose
#docker-compose up

echo "Docker application started!"