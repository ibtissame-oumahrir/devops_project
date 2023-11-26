# Dockerfile
FROM ubuntu:18.04

# Update package lists
RUN apt-get update

# Install required packages
RUN apt-get install -y \
    curl \
    git \
    nano \
    sudo \
    wget

# Add a simple welcome message to the container
CMD ["echo", "Welcome to your Docker container with Ubuntu Simplified!"]