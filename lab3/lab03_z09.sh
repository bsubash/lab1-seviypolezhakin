#!/bin/bash
if [ -n "$1" ] && [ "$1" == "-task" ];
then
	echo "Задание"
	echo "9. Нумерация каждой строки в файле filename (номер слева максимум 9-значный, выравненный по правому краю)"
	echo 
	echo
fi
	sed = file.txt | sed 'N; s/^/ /; s/ *\(.\{6,\}\)\n/\1 /'

