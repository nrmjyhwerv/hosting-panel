#!/bin/bash

while true; do
    echo "Starting node..."
    node index.js
    echo "Node crashed with exit code $? - restarting in 5 seconds..."
    sleep 5
done
