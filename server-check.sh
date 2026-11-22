
#!/usr/bin/env bash

echo "================================"
echo "       Linux Server Toolkit"
echo "================================"

echo
echo "System:"
uname -srm

echo
echo "Uptime:"
uptime -p

echo
echo "Memory usage:"
free -h

echo
echo "Disk usage:"
df -h /

echo
echo "CPU load:"
uptime

echo
echo "Failed systemd services:"
if command -v systemctl >/dev/null 2>&1; then
    systemctl --failed --no-pager
else
    echo "systemd is not available"
fi

echo
echo "System check completed."
