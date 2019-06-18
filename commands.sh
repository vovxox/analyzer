grep ERROR /path/to/tomcat.log | awk '{$1=$2=""; print $0}' | sort | uniq -c | sort -n | tail -n 10 | sort -nr

d1=$(date --date="-10 min" "+%b %_d %H:%M")
d2=$(date "+%b %_d %H:%M")
while read line; do
    [[ $line > $d1 && $line < $d2 || $line =~ $d2 ]] && echo $line
done


 grep "^$(date -d -1hour +'%Y-%m-%d %H')" test.logs | grep 'exception'| mail -s "exceptions in last hour of test.logs" ImranRazaKhan

top -b -d1 -n1|grep -i "Cpu(s)"|head -c21|cut -d ' ' -f3|cut -d '%' -f1 > file1.csv

