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
fi
