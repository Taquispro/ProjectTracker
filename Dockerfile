# Use official Tomcat 11 with Java 21 (Temurin) taqu
FROM tomcat:11-jdk21-temurin

# Remove default webapps 
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into webapps as ROOT.war
COPY ProjectTracker-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
