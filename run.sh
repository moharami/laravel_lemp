#!/bin/sh
project="laravel"
if [ -d $project ]
then
    echo "Directory already exists"
    docker-compose up --build -d
else	
    docker run --rm -v $(pwd):/app composer create-project laravel/laravel $project --prefer-dist
    docker-compose up --build -d
    docker-compose exec app php artisan key:generate
    docker-compose exec sudo chown -R $USER:www-data storage
    docker-compose exec sudo chown -R $USER:www-data bootstrap/cache
    docker-compose exec chmod -R 775 storage
    docker-compose exec chmod -R 775 bootstrap/cache


fi
