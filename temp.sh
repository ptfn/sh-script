while true
do
    FAN=$(cat /sys/class/hwmon/hwmon5/fan1_input)
    TEMP=$(sensors | grep 'CPU' | cut -c16-22)
    echo "$FAN $TEMP"
    sleep 1 
done
