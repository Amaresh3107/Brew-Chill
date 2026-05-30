#!/bin/bash

echo "Deploying Brew & Chill..."

sudo cp index.html /var/www/html/
sudo cp style.css /var/www/html/

sudo systemctl restart nginx

echo "Deployment Complete!"