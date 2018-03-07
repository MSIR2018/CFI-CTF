#while true ; do
a=`cat /sys/class/net/eth0/statistics/rx_bytes`
sleep 1
b=`cat /sys/class/net/eth0/statistics/rx_bytes`
by=$((b-a))
kb=$((by/1024))
mb=$((kb/1024))
target=4

if [ $mb -gt $target ];then
echo $mb
fi

#done
