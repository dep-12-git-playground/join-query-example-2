#!/usr/bin/sh

echo "Starting the database server"
docker compose up

echo "Please wait"
sleep 30

echo "Initializing the client"
docker exec -it mysql_db mysql -u root -pmysql --port 5050