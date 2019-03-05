    
#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "14. Сравнить две строковые переменные и если первая больше, то вывести сообщение об этом, используя команду test"
    echo ""
    break
  fi
  ((i++))
done

echo "enter first line"
read str1
echo "enter second line"
read str2
if test $str1 \> $str2
then
echo "first line is larger than the second line"
else
echo "second line is larger"
fi




