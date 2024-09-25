#!/bin/bash

# Change working directory
cd /home/ec2-user/server

# Remove unused code
rm -rf node_modules
rm -rf build

# Install node modules
npm install || { echo "Failed to install dependencies"; exit 1; }

# Create React build
npm run build || { echo "Failed to create React build"; exit 1; }

echo "Build completed successfully"