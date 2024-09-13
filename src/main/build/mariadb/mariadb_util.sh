
docker run  -d --name mariadb_util -p 3307:3306 -e MYSQL_ROOT_PASSWORD=WhyChasta!  \
	-e MYSQL_DATABASE=scratch -e MYSQL_USER=arne -e MYSQL_PASSWORD=WhyChasta!  \
        -d docker.io/mariadb/server:10.4  
