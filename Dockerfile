FROM tomcat:8.0.20-jre8
# Dummy text to test 
COPY target/car-rentals*.war /usr/local/tomcat/webapps/car-rentals.war
