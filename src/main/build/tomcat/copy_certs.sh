docker cp /etc/letsencrypt/archive/ui4sql.net/cert1.pem tomcat:/usr/local/tomcat/conf/cert.pem
sleep 2s
docker cp /etc/letsencrypt/archive/ui4sql.net/chain1.pem tomcat:/usr/local/tomcat/conf/chain.pem
sleep 2s
docker cp /etc/letsencrypt/archive/ui4sql.net/fullchain1.pem tomcat:/usr/local/tomcat/conf/fullchain.pem
sleep 2s
docker cp /etc/letsencrypt/archive/ui4sql.net/privkey1.pem tomcat:/usr/local/tomcat/conf/privkey.pem



