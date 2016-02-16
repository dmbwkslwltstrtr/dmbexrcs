#how to check if port is open and unused
netstat -tln | tail -n +3 | awk '{ print $4 }'

#crop audio/video
ffmpeg -i InputFile -vcodec copy -acodec copy -ss 00:00:00 -t <duration> OutPutFile
ffmpeg -i InputFile  -vn -acodec copy -ss 00:00:00 -t <duration> OutPutFile

#List Cron Jobs
crontab –l –u username

#Edit Cron Jobs
If you want to run a script as a normal user:
crontab -e
add line:
07,37 * * * * /usr/bin/tunlrupdate.sh

If you want to run your script as root:
sudo crontab -e
add same line:
07,37 * * * * /usr/bin/tunlrupdate.sh

#Remove Cron Jobs
crontab -ir

#rename files in respective directories
#find /mnt/0 -type f -iname 'dwn.wait' -execdir mv {} dwn.todo +
find /mnt/0 -type f -iname 'dwn.wait' -execdir rename -v 's/\.wait/\.todo/' {} +

#http://askubuntu.com/questions/419115/make-bluetooth-disabled-by-default
rfkill unblock bluetooth
