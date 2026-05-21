#include "isogram.h"
#include <string.h>
#include <ctype.h>
bool is_isogram(const char phrase[]){
	char pseudobet[27]="\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
	int x=0,y=0,c;
	if(phrase){
		for(x=0; x<(int)strlen(phrase); x++){
			c=tolower(phrase[x]);
			for(y=0;y<(int)strlen(pseudobet); y++){
				if(c==pseudobet[y])
					return false;
			}
			if(c-97>=0 && c-97<26)
				pseudobet[y]=c;
		}
		return true;
	}
	else
		return false;
}
