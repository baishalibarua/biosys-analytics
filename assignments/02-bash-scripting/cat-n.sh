cat -n files/sonnet-29.txt

#!/bin/bash

args=("$@")

declare -i x=1

declare -i limit=15


if [ "$#" -lt "1"]; then
        
echo "Usage : ./script.sh file.txt 3"
        
exit 1

fi


if [ ! -f "${args[0]}" ]; then
	
echo "${args[0]} is not a file"
	
exit 1

fi


if [ "$#" -eq "2" ]; then
       
 limit=${args[1]}
fi

while read line; do
        
echo '{print NR, $line}' 
        
x=x+1
        
if [ "$x" -gt "$limit" ]; then
                
exit
        
fi

done < ${args[0]}

