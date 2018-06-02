#!/system/bin/sh

ls -1 *.amr | while read name
do
        na=$(echo $name | tr -d ' ')
        mv "$name" $na
done

exit 0
