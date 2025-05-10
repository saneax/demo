#!/bin/bash

# Wait for the application to start
echo "Waiting for application to start..."
sleep 10

# Test the application
echo "Testing application..."
response=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:80)

if [ "$response" -eq 200 ]; then
    echo "Test passed! Application is running."
    exit 0
else
    echo "Test failed! Application returned status code: $response"
    exit 1
fi 