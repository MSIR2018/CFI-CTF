#while true ; do
a=`cat /sys/class/net/eth0/statistics/rx_bytes`
sleep 1
b=`cat /sys/class/net/eth0/statistics/rx_bytes`
by=$((b-a))
kb=$((by/1024))
mb=$((kb/1024))

if [ $mb -gt 8 ];then
echo $kb
fi

#done
