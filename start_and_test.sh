#!/bin/bash

node server.js &

sleep 5

HOST=localhost
PORT=${PLUGIN_PORT:-3000} # Use the PLUGIN_PORT if set, or default to 3000

# Send an HTTP request to check if the server is running
response=$(curl -IsS "http://${HOST}:${PORT}" | head -n 1)

# Check if the response contains "200 OK" to confirm the server is running
if [[ "$response" == *"200 OK"* ]]; then
  echo "Server is running and accepting connections on http://${HOST}:${PORT}"
else
  echo "Server is not running or not accepting connections"
fi
