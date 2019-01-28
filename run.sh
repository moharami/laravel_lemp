#!/bin/sh
Dir="laravel"
if [ -d $Dir ]
then
    echo "Directory already exists"
    docker-compose up --build -d
else	
    git clone https://github.com/laravel/laravel.git $Dir
    cd  $Dir    
    docker run --rm -v $(pwd):/app composer install
    cp .env.example .env
    cd ..
    sudo chown -R $USER:$USER $Dir
    docker-compose up --build -d
    docker-compose exec app php artisan key:generate
fi


