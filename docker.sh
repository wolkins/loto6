#!/bin/sh
cp docker/* .
if [ $1 = 'up' ]; then
    docker-compose up -d --build
    docker-compose run --rm web rake db:create
    docker-compose run --rm web rake db:migrate
    docker-compose run --rm web rake db:seed
elif [ $1 = 'start' ]; then
    docker-compose up -d
elif [ $1 = 'c' ]; then
    docker-compose run --rm web rails c
elif [ $1 = 'db_overhaul' ]; then
    docker-compose build
    docker-compose run --rm web rake db:create
    docker-compose run --rm web rake db:migrate
    docker-compose run --rm web rake db:seed
elif [ $1 = 'migrate' ]; then
    docker-compose run --rm web rake db:migrate
    docker-compose run --rm web rake db:seed
elif [ $1 = 'stop' ]; then
    docker-compose stop
elif [ $1 = 'down' ]; then
    docker-compose down --rmi all
elif [ $1 = 'restart' ]; then
    docker-compose restart
else
    docker-compose run --rm web $@
fi

sudo chown -R $USER:$USER .
rm Dockerfile
rm docker-compose.yml
