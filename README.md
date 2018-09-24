"# Docker-domainname-phpfpmsite" 

Features

    Docker application with domain name. To implement this feature the application uses jwilder/nginx-proxy image. Also it comprises nginx, php-fpm, mysql and phpmyadmin images.  

Init project:

Install docker, then type in the root of the project:

    docker-compose up -d

If some changes in docker-compose.yml file were made then type

	docker-compose up --build -d

Also add these lines in /etc/hosts if localhost is used or another ip-address in other cases:

    127.0.0.1  site.local
	127.0.0.1  www.site.local

Docker application creates database with name 'mdb' in Mysql. To run mysql console type:

    mysql -umdb -p --port 3306 --host 127.0.0.1

Password 'mdb' and database 'mdb'.

	USE mdb;

Create table `persons` and insert data from persons.sql.

Exit mysql with command: \q

This application comprises two php-files with phpinfo and retrieve simple data. To run them type in browser:

    http://site.local/
    http://site.local/persons.php

To run phpmyadmin type:

	http://site.local:8080/

This application comprises domain name and nginx container, so it could be used in production mode.