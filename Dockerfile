# Use official Tomcat 11 with JRE 21
FROM tomcat:11.0.22-jdk21-temurin

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Set working directory
WORKDIR /usr/local/tomcat/webapps/

# Copy WAR file into Tomcat
COPY ProjectTracker-0.0.1-SNAPSHOT.war ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
