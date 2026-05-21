#!/usr/bash
set -o errexit
set -o nounset
main() {
	input=$@
	out=""
	if [ $# -ne "1" ]; then echo "Usage: raindrops.sh <number>"; exit 1
	else
		if [ $(($1 % 3)) -eq 0 ]; then
			out+="Pling"
		fi
		if [ $(($1 % 5)) -eq 0 ]; then
			out+="Plang"
		fi
		if [ $(($1 % 7)) -eq 0 ]; then
			out+="Plong"
		fi
	fi
	if [ -z $out ]; then
		echo "$1"
	else	
		echo "$out"
	fi
}

main "$@"
