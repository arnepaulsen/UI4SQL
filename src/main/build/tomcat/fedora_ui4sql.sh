echo " stopping old"
podman stop ui4sql
echo "removing old2"
podman rm ui4sql
echo " running new"
podman run -it -d --name ui4sql --env "db_pwd=easy" --env "db_user=ui4sql" --env "db_url=jdbc:mariadb://192.168.1.4:3306/ui4sql" --env "templates_url=https://localhost:8080/ui4sql/templates/"   -p 8080:8080 ui4sql:latest 





