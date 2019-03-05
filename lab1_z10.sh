#!/bin/bash
arr=($@)
i=0
while [ $i -lt $# ]
do
  if [ "${arr[$i]}" == "-task" ];
  then
    echo "Задание"
    echo "10.Проверить положительное или отрицательное число."
    echo ""
    break
  fi
  ((i++))
done

echo "Введите проверяемое число"
read val1
if [ $val1 -gt 0 ]
then
echo "The test value $val1 is positive"
elif [ $val1 -eq 0 ]
then
echo "The test value $val1 equal 0"
else
echo "The test value $val1 is negative"
fi
echo
