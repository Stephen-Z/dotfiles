origin=`cat /sys/class/backlight/intel_backlight/brightness`
echo $(($origin/1000 ))
