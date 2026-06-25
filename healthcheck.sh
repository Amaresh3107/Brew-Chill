#!/bin/bash

echo "=========================="
echo "   BREW & CHILL SERVER"
echo "=========================="

# Nginx status
if systemctl is-active --quiet nginx; then
    echo "Nginx:	Running"
else
    echo "Nginx:	Down"
    exit 1
fi

# HTTP check
HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost)
if [ "$HTTP_STATUS" == "200" ]; then
    echo "HTTP Check:  $HTTP_STATUS"
else
    echo "HTTP Check:  $HTTP_STATUS"
    exit 1
fi

echo "Disk Usage:  $(df -h / | awk 'NR==2{print $5}')"
echo "Memory Free: $(free -h | awk 'NR==2{print $4}')"
echo "Uptime:      $(uptime -p)"
echo "=========================="
echo "All checks passed"
