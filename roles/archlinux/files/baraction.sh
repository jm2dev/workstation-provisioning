#!/usr/bin/env sh
# https://github.com/spandanji/dotfiles/blob/master/.config/spectrwm/statusbar.sh

cpu() {
	read cpu a b c previdle rest < /proc/stat
  	prevtotal=$((a+b+c+previdle))
  	sleep 0.5
  	read cpu a b c idle rest < /proc/stat

	total=$((a+b+c+idle))
 	cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
	echo -e "CPU: $cpu%"
}

dte() {
  #dte="$(date +"%A, %B %d ~ %l:%M:%S %p IST")"
  dte="$(date +"%a %b %d %R %Z %Y")"
  echo -e "$dte"
}

hddroot(){
	hddroot="$(df -h | awk 'NR==6{print $3, $5}')"
	echo -e "ROOT : $hddroot"
}

mem(){
	mem="$(free | awk '/Mem/ {printf "%d MiB : %d%\n", $3 / 1024.0,  $3/$2 *100}')"
	echo -e "MEM : $mem"
}


while :; do
    echo "$(cpu) || $(hddroot) || $(mem) || $(dte)"
    sleep 5s
done
