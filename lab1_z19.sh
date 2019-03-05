    
#!/bin/bash

arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "19. Сравнить две числовые переменные и вывести сообщение yes или no, используя команду ["
    echo ""
    break
  fi
  ((i++))
done

echo "enter var1"
read var1
echo "enter var2"
read var2
if [ $var1 -eq $var2 ]
then
echo "yes"
else 
echo "no"
fi



