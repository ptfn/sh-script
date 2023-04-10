echo "MIN1,MIN5,MIN15" >> log.csv
while true
do
    MIN1=$(cut -d" " -f1 /proc/loadavg)
    MIN5=$(cut -d" " -f2 /proc/loadavg)
    MIN15=$(cut -d" " -f3 /proc/loadavg)
    echo -e "$MIN1,$MIN5,$MIN15" >> log.csv
    sleep 60
done
