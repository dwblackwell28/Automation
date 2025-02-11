echo "System Report - $(date)" > system-report.log
echo "--------------------------------------">> system-report.log

echo "User: $(whoami)" >> system-report.log

echo "System Uptime: $(uptime)" >> system-report.log

echo "Disk Usage:" >> system-report.log
df -h >> system-report.log

echo "Memory Usage:" >> system-report.log
vm_stat  >> system-report.log

echo "Top 5 Processes by CPU Usage:" >> system-report.log
ps aux --sort=-%cpu | head -n 6 >> system-report.log


echo "--------------------------------------">> system-report.log
echo "System Report saved to system-report.log"

mail -s "System Report - $(date)" dwblackwell28@yahoo.com < system-report.log
