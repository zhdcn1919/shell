#!/system/bin/sh

ls -1 *.amr | while read name
do
	na=$(echo $name | tr -d ' ')
	mv "$name" $na
done

for i in `ls -1 *.amr`
do
	who=`echo $i | cut -d "_" -f1`
	time=`echo $i | cut -d "_" -f2 | cut -d "." -f1`
	mv $i "$time"_"$who".amr
done

exit 0
