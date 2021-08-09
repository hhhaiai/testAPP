#!/system/bin/sh

OLD_IFS=$IFS
IFS=$(echo -en "\n\b")

for element in `ls $1`;do  
    full_path="$1/$element" 
    echo  $full_path
done

IFS=$OLD_IFS