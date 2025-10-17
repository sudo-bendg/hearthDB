FROM mongo:latest

# Create directory for data
RUN mkdir -p /data/db

# Set environment variables for MongoDB authentication
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=secure_password123

# Expose the default MongoDB port
EXPOSE 27017

# Set volume mount point
VOLUME ["/data/db"]

CMD ["mongod"]