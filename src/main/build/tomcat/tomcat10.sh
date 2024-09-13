podman cp tomcat-users.xml ui4sql:/opt/tomcat/conf/tomcat-users.xml
sleep 1s
podman cp context.xml ui4sql:/opt/tomcat/webapps/host-manager/META-INF/context.xml
sleep 1s
podman cp context.xml ui4sql:/opt/tomcat/webapps/manager/META-INF/context.xml



