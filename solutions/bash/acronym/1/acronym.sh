#!/usr/bash
set -o errexit
set -o nounset
main() {
	input=$@
	if [ $# -ne "1" ]; then echo "Usage: acronym.sh <string1>"; exit 1
	else
		str1=${1//[-_.]/ } #hyphens, underscores, periods to whitespace
		str1=${str1//[^a-zA-Z ]/} #filter any nonalphabetic letters 
		str1=${str1^^[abcdefghijklmnopqrstuvwxyz]} #to uppers
		out=""
		for i in $str1; do
			out+=${i:1-1:1}
		done
		echo "$out"
	fi
}
main "$@"
