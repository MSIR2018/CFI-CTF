a=`cat /sys/class/net/eth0/statistics/rx_bytes`
sleep 1
b=`cat /sys/class/net/eth0/statistics/rx_bytes`
by=$((b-a))
kb=$((by/1024))
target=10000

if [ $kb -gt $target ];then
echo 'ok'
fi
