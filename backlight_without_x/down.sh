origin=`cat /sys/class/backlight/intel_backlight/brightness`
current=$(($origin / 1))
newValue=$(($current - 10000))
if [ $newValue -lt 10000 ]
then
	newValue=100
fi
echo $newValue
echo $newValue > /sys/class/backlight/intel_backlight/brightness

