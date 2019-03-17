# Laravel lemp For One and Multi Project

this project is for making laravel project in docker enviroment . for just one project or use multi project

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

What things you need to install the software and how to install them

```
docker 
docker-compose

```

### Installing

A step by step series of examples that tell you how to get a development env running

` $ git clone https://github.com/moharami/laravel_lemp.git `

`$ sudo ./run.sh`




## url

you now open your project in this url : 

* [laravel.test](http://laravel.test/) : 
* [phpmyadmin](http://localhost:8080/) : localhost:8080


when you run this shell it make laravel project in your project folder and then docker-compose will be up . and you dont have to do anything else.
after it's finished, you have 
1. nginx  (webserver)
2. MariaDB (database)
3. php-fpm 7.2
3. phpMyAdmin (database managment)
4. Laravel project


##multi project

###quick Setup
for more setup we create one shell for this purpose. you need just run 

`sudo ./makeNewProject.sh`

after run this shell you have url for your project and one database created in phpmyadmin as name as you give to shell command.



####Manual setup 


####step 1
for multi project purpose , you have to put your projecti in 'projects' forlder. structure like this



+ projects
    - laravel
    - project1
    - project2


####step 2
edit your nginx configuration . we put project1 example in `./Config/nginx/conf.d/project1.conf` that it point to project1. you can add your own nginx configuration.