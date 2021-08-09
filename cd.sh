#!/system/bin/sh
 
for x in `ls | tr " " "_"`
do
    f="`echo ${x} | tr "_" " "`"
    f1="`echo ${x}| sed 's/_//g'`"
    #echo $f1
    if [ "$f" != "$f1" ]
    then
        mv "$f" "$f1"
    fi
done