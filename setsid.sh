#!/bin/sh
# subshell to change sid according to input

read a
if [ $a -eq 'ORACLE_SID2' ];then
echo "ORACLE_SID1"
else 
echo "ORACLE_SID2"
fi
