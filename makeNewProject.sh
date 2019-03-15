#!/usr/bin/env bash


source <(sed -E -n 's/[^#]+/export &/ p' .env)


echo Please Enter Your Project Name ??
read projectName

echo we Prepare to Make Your Project .....

docker run --rm -v $(pwd):/app composer create-project laravel/laravel ./projects/$projectName --prefer-dist

cp ./Config/nginx/conf.d/project1.conf ./Config/nginx/conf.d/$projectName.conf

sed -i "s/laravel/$projectName/g" ./Config/nginx/conf.d/$projectName.conf
sudo echo "127.0.0.1 $projectName.dev" >> /etc/hosts
docker exec -it database mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE $projectName"
echo Your Database is ready : "$projectName"
echo You can Open Your Project In
echo "http://$projectName.dev/"

