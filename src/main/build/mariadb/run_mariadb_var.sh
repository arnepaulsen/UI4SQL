
docker run  -d --restart=always --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=getajob!  \
	-e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=getajob!  \
        -v /var/lib/mysql:/var/lib/mysql:Z -d docker.io/mariadb/server:10.4  
