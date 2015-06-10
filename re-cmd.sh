#!/bin/bash
###########################
#
#Purpose:verify the difference of `` and (),those are replace command
#Auhor:Efim Y.F.Luo
#e-Mail:yfluo@163.com
#Time:2011.08.30 13:30
#Version:0.0.1
#
##########################

#
#Define the array variables for test
#
declare -a a=(this is a array for test!)
echo "${a[@]}"  #能得到全部组数，或用*代替@

#
#Nothing used
#
echo -e "
Nothing used:"
i=0
while [ "${a[$i]}" != '' ]
do
echo -n "${a[$i]} "
i=`expr $i+1`   #``作为赋值时直接使用
done
echo

#
#Verify the ()
#
echo -e "
Verify the ():"
i=0
while [ "${a[($i)]}" != '' ]  #()在此是脱裤子放屁
do
echo -n "${a[$i]} "
let "i+=1"
done
echo

#
#Verify the ``
#Caution:you will see many error message,please press ctrl-c to break
#
echo -e "
Verify the \`\`:"
i=0
while [ "${a[$i]}" != '' ]
do
echo -n "${a[`$i`]}"
let "i+=1"
done

exit 0
