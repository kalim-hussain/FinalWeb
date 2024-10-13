#!/bin/bash
echo "Starting the build process..."

# Build the Docker image
docker build -t firtweb:latest .  # Replace with your actual image name

# Stop and remove the existing container (if it's running)
if [ "$(docker ps -q -f name=my-nginx-container)" ]; then  # Replace your_container_name
    docker stop my-nginx-container  # Replace with your container name
    docker rm my-nginx-container # Replace with your container name
fi

# Run the new container
docker run -d --name my-nginx-container -p 80:80 yfirtweb:latest  # Replace names accordingly

echo "Build and deployment completed successfully."
