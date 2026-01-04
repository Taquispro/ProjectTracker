# Use official Tomcat image
FROM tomcat:11-jre17  # Tomcat 11 supports JSPs; you can also use tomcat:11-jre21 if needed

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Set working directory (optional)
WORKDIR /usr/local/tomcat/webapps/

# Copy your WAR file into the webapps folder
COPY ProjectTracker-0.0.1-SNAPSHOT.war ROOT.war



# Start Tomcat
CMD ["catalina.sh", "run"]
