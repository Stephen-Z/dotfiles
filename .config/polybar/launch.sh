#kill all polybar
killall -q polybar

MONITOR=DP-1 polybar --reload example &
sleep 1
for m in $(polybar --list-monitors | cut -d":" -f1); do
	if [ $m == "DP-1" ];then
		continue
	fi
	MONITOR=$m polybar --reload example &
done

#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload example &
#  done
#else
#  polybar --reload example &
#fi
