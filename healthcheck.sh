#!/bin/bash

echo "=========================="
echo "   BREW & CHILL SERVER"
echo "=========================="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "CPU Load:"
uptime

echo ""
if systemctl is-active --quiet nginx
then
    echo "Nginx: Running ✅"
else
    echo "Nginx: Down ❌"
fi

echo ""
echo "Public IP:"
curl ifconfig.me
echo ""
