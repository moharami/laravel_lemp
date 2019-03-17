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
`$ sudo run.sh`




## url

you now open your project in this url : 
####[laravel.test](http://laravel.test) 

and your phpmyadmin address is : 
####[localhost:8080](http://localhost:8080) 



when you run this shell it make laravel project in your project folder and then docker-compose will be up . and you dont have to do anything else.
after it's finished, you have 
1. nginx  (webserver)
2. MariaDB (database)
3. php-fpm 7.2
3. phpMyAdmin (database managment)
4. Laravel project


## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

























## Docker development environment for Laravel  

## Setup
This setup contains:
+ nginx alpine
+ php-fpm 7.2
+ MariaDB
+ phpMyAdmin


## Pre-requisites

This repository requires [Docker](https://docs.docker.com/) and [Docker Compose](https://docs.docker.com/compose/).




## Installation

~~~~
$ git clone https://github.com/moharami/laravel_lemp.git

$ ./run.sh
~~~~

## View project

Url : http://localhost/

## Access phpMyAdmin

http://localhost:8080
~~~~   
username: root
password: secret
~~~~


