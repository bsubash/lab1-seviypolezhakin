#!/bin/bash
if [ -n $1 ] && [ "$1"  == "-task" ];then
echo "Задание"
echo "63. Печатать все линии ИСКЛЮЧАЯ часть между двумя регулярными выражениями"
echo
echo
fi
cat $1 | sed '/Iowa/,/Montana/d'
exit 0

