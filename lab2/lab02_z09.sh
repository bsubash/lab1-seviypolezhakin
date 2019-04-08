#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "9. Написать скрипт, который скачивает заглавную страницу известного портала и архивирует ее (использовать wget и tar -czvf )."
    echo ""
    break
  fi
  ((i++))
done

wget -r -k -l 7 -p -E -nc  -O steam.zip https://store.steampowered.com/?l=russian
