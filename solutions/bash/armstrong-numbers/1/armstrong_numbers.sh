#!/usr/bash
set -o errexit
set -o nounset
main() {
	input=$@
	if [ $# -ne "1" ]; then echo "Usage: armstrong_numbers.sh <number>"; exit 1
	else
		num=$input
		exp=${#num}
		sum=0
		for i in $(seq 1 $exp) ; do
			sum=$(( sum + $((${num:i-1:1}**$exp)) ))
			
		done
		if [ $sum -eq $num ]; then
			echo "true"
		else
			echo "false"
		fi
	fi
}
main "$@"
