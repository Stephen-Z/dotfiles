connect () {
	command="xfreerdp $3  +async-update +async-input /dynamic-resolution   /bpp:8 /network:modem /compression-level:2 -themes -wallpaper -grab-keyboard  /u:$2 /v:$1"
	echo $command
	$command
}

file="/home/stephen/lastLogin.txt"
if [ "$1" == "" ]
then
	echo "enter if"
	while IFS="," read -ra TEXT || [ -n "$TEXT" ];do
		connect ${TEXT[0]} ${TEXT[1]} ${TEXT[2]} 
		break
	done < "$file"
else
	echo "$1,$2,$3" > lastLogin.txt
	connect $1 $2 $3
fi

#xfreerdp $3 /drive:home,/windowshare /dynamic-resolution   /bpp:8 /network:modem /compression -themes -wallpaper -grab-keyboard  /u:$2 /v:$1
