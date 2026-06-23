# Stage 1: Build stage using Maven and Java 17
FROM maven:3.9-eclipse-temurin-17 AS builder

# Set working directory for build process
WORKDIR /app

# Copy only pom.xml first to cache dependencies
COPY EcommerceApp/pom.xml .

# Download all project dependencies without building
RUN mvn dependency:go-offline -B

# Copy application source code
COPY EcommerceApp/src ./src

# Copy SQLite database file into build stage
COPY EcommerceApp/mydatabase.db ./

# Copy image assets (png files)
COPY EcommerceApp/*.png ./

# Build the application and create WAR file
RUN mvn clean package -DskipTests


# Stage 2: Runtime stage using Tomcat
FROM tomcat:9.0-jre17

# Remove default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from build stage into Tomcat deployment directory
COPY --from=builder /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Copy SQLite database file into Tomcat directory
COPY --from=builder /app/mydatabase.db /usr/local/tomcat/mydatabase.db

# Set working directory to Tomcat home
WORKDIR /usr/local/tomcat

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
