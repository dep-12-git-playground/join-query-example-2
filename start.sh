#!/usr/bin/sh

echo "Starting the application"
docker compose up -d
docker exec -it mysql_db mysql -u root -pmysql --port 5050