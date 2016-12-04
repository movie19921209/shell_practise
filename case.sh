#!/bin/sh
echo "-------99---"
rr=${1}
echo "-${1}-------$rr---------"

case1(){
echo "inpute a number between 1 to 4"
echo "Your number is :\c"
read aNum
case $aNum in
	1)echo "You select 1"
	;;
	2)echo "You select 2"
	;;
	3)echo "You select 3"
	;;
	4)echo "You select 4"
	;;
	*)echo "You do not select a number between 1 to 4"
	;;
esac
}

case2(){
	echo "-----practise case2----"
	option="${1}"
	echo "-----practise case2-${1}---"
	case ${option} in
	-f) FILE="${2}"
	    echo "File name is $FILE"
	;;
	-d) DIR="${2}"
		echo "File namse is $DIR"
	;;
	*)
		echo "`basename ${0}` :usage: [-f file] | [-d directory]"
		exit 1 #command to come out of program with status 1
	;;
	esac
}

#case1

#in the functioin ${1} is just the parameter of the function ,not from the shell script parameter!
case2 ${1} ${2}
