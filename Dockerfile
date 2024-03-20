# Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11-openjdk

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file from the local filesystem into the container
COPY EcommerceApp/target/EcommerceApp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
