#!/bin/zsh

#1. find *.part files and download separately by extracting ID
#find /media/r/0 -type f -iname '*.part' -execdir youtube-dl --youtube-skip-dash-manifest -a {} +
# extract the substring of 11 characters between last(or the one next to last) hyphen(-) and the first period(.) after that

#2. URL list file
xt_code=-1
while [ $xt_code -ne 0 ]; do
  find /media/r/0 -type f -iname 'dwn' -execdir youtube-dl --youtube-skip-dash-manifest --prefer-ffmpeg -R 19 -a {} +
  xt_code=$?
  echo "exit code(find...-execdir youtube-dl...{} +):$xt_code"
done

#timeout_arg=now
if [[ $# -eq 1 ]] && [[ $1 =~ "[0-9]+" ]]; then
	timeout_arg=+$1
#	elif [[ $1 -eq 's' ]]; then #stand-by
#		echo "Exiting program."
#		exit 0
#	fi 
else
#	timeout_arg="+3"
	echo "Exiting script."
	exit 0
fi

sudo shutdown -P -f $timeout_arg
