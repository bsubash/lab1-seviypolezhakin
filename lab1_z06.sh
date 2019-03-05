#!/bin/bash
if [ -n "$1" ] && [ "$1"  == "-task" ]; then
echo "Задание"
echo "6. Вывести имя скрипта, который был запущен."
echo 
fi
echo
echo "Name of script - $0"
exit 0
