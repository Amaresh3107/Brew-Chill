#!/bin/bash
set -e

echo "Starting deployment..."

WEB_DIR="/var/www/html"
BACKUP_DIR="/var/www/html_backup"
PROJECT_DIR="/home/ubuntu/Brew-Chill"

# Backup current live version
echo "Backing up current version..."
sudo cp -r $WEB_DIR $BACKUP_DIR

# Copy new files
echo "Copying files..."
sudo cp $PROJECT_DIR/index.html $WEB_DIR/
sudo cp $PROJECT_DIR/style.css $WEB_DIR/

# Restart Nginx
echo "Restarting Nginx..."
sudo systemctl restart nginx

# Health check
echo "Running health check..."
sleep 2
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)

if [ "$HTTP_STATUS" == "200" ]; then
    echo "Deployment successful! Site returned HTTP $HTTP_STATUS"
else
    echo "Health check failed (HTTP $HTTP_STATUS). Rolling back..."
    sudo cp -r $BACKUP_DIR/* $WEB_DIR/
    sudo systemctl restart nginx
    exit 1
fi
