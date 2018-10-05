origin=`cat /sys/class/backlight/intel_backlight/brightness`
current=$(($origin / 1))

if [ $current -lt 10000 ]
then
	current=0
fi

newValue=$(($current + 10000))
if [ $newValue -gt 120000 ]
then
	newValue=120000
fi
echo $newValue
echo $newValue | tee /sys/class/backlight/intel_backlight/brightness

