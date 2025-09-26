echo "1. Get CPU Usage Over 10 Seconds 
2. Get Memory Usage 
3. Get Disk Usage 
4. Get Network Stats 
5. Get Version 
6. Get Top Processes by CPU
7. Get Top Processes by RAM
8. Get Users Logged in
9. Get Host Uptime & Last Boot
10. Get all of the above"

read userinput

if [ $userinput = 1 ];
then
    mpstat -u 1 10
elif [ $userinput = 2 ];
then
    free -m
elif [ $userinput = 3 ];
then
    df -h
elif [ $userinput = 4 ];
then
    netstat -natp
elif [ $userinput = 5 ];
then
    cat /proc/version
elif [ $userinput = 6 ];
then
 ps -eo pcpu,pid,user,args | sort -k 1 -r | head -5
elif [ $userinput = 7 ];
then
    ps aux --sort -%mem | head -5
elif [ $userinput = 8 ];
then
    who
elif [ $userinput = 9 ];
then
 who -b
 uptime
elif [ $userinput = 10 ];
then
    mpstat -u 1 10
    free -m
    df -h
    netstat -natp
    cat /proc/version
    ps -eo pcpu,pid,user,args | sort -k 1 -r | head -5
    ps aux --sort -%mem | head -5
    who
    who -b
    uptime
fi