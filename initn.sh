#!/system/bin/sh
mount -o rw,remount /system
cp com.google.android.maps.jar /system/framework/ && chmod 644 /system/framework/com.google.android.maps.jar
cp com.google.android.maps.xml /system/etc/permissions/ && chmod 644 /system/etc/permissions/com.google.android.maps.xml
mount -o ro,remount /system
exit 0
