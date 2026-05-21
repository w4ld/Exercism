#!/usr/bash
set -o errexit
set -o nounset
main() {
	input=$@
	if [ $# -ne "2" ]; then echo "Usage: hamming.sh <string1> <string2>"; exit 1
	else
		count=0
		str1=$1
		str2=$2
		if [ ${#str1} -eq ${#str2} ]; then
			for i in $(seq 1 ${#str1}); do
				a=${str1:i-1:1}
				b=${str2:i-1:1}
				if [ $a != $b ]; then
					let "count+=1"
				fi	
			done
			echo "$count"
		else
			if [ ${#str1} -eq 0 ];then
				echo "left strand must not be empty";
			elif [ ${#str2} -eq 0 ] ; then
				echo "right strand must not be empty";
			else
				echo "left and right strands must be of equal length";
			fi
			exit 1
		fi	
	fi
}

main "$@"
