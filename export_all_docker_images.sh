#!/bin/bash

# Create a directory to store the saved images
mkdir -p docker-images
cd docker-images

# Get all image names and tags
docker images --format "{{.Repository}}:{{.Tag}}" | while read image; do
    # Replace slashes and colons in image name to make it a valid filename
    filename=$(echo "$image" | sed 's/[\/:]/_/g').tar
    echo "Saving $image to $filename..."
    docker save "$image" -o "$filename"
done
echo "✅ All Docker images have been saved in the 'docker-images' directory."
