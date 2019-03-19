#!/bin/bash
echo "Hello world!"
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "28. Создать скрипт, который обрабатывает список файлов, заданный в файле, и удаляет файлы согласно этому списку (использовать оператор for)"
    echo ""
    break
  fi
  ((i++))
done

echo "to delete files, they must be created"
declare -i n
echo "Input the number of filenames:"
read n
touch file1
for ((a=0; a < n; a++))
do
echo "Input filename$a:"
read buf
echo -e "$buf" >>file1 
done
readarray ARRAY < file1
index=0 
while read line; do 
array[$index]="$line" 
index=$(($index+1)) 
done < file1
for ((a=0; a < n; a++))
do
echo "File ${array[$a]} was created"
touch "${array[$a]}"
done
for ((a=0; a < n; a++))
do
echo "File ${array[$a]} was deleted"
rm "${array[$a]}"
done
rm file1
