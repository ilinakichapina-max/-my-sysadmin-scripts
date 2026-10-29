#!/bin/bash
N=5
ITERATIONS=3

for ((i=1; i<=ITERATIONS; i++)); do
    echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" >> monitor.log
    echo "=== free -h ===" >> monitor.log
    free -h >> monitor.log
    echo "" >> monitor.log
    echo "=== df -h ===" >> monitor.log
    df -h >> monitor.log
    echo "" >> monitor.log
    echo "=== uptime ===" >> monitor.log
    uptime >> monitor.log
    echo "" >> monitor.log
    if [ $i -lt $ITERATIONS ]; then
        sleep $N
    fi
done
echo "Мониторинг завершен. Результаты в файле monitor.log"
