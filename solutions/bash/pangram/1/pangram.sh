#!/usr/bash
set -o errexit
set -o nounset
main(){
	input=$@
	alpha="abcdefghijklmnopqrstuvwxyz"
	if [ $# -ne "1" ]; then echo "Usage panagram.sh <string>"; exit 1
	else
		pana=${1,,}	#to bring strings to lowercase
		for i in $(seq 1 ${#1}) ; do
			alpha="${alpha//${pana:i-1:1}/}" #remove letters from alpha string 
		done
	fi
	if [ -z $alpha ]; then echo "true" #check that pana had full alpha coverage
	else echo "false"
	fi
}
main "$@"
