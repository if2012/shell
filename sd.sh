#!/bin/bash
echo

index=1

echo "Listing args with\"\$*\":"
for arg in "$*"

do 
  echo "Arg #$index=$arg"
  let "index+=1"

done

echo "所有的参数被认为是一个单词"

echo

index=1

echo "Listing args with \"\$@\":"
for arg in "$@"

do
  echo "Arg #$index=$arg"
  let "index+=1"

done

echo "所有的参数被认为是各个独立的单词(识别参数中的引号)"

echo

index=1

echo "Listing args with \$*(未被引用):"
for arg in $*

do
  echo "Arg #$index=$arg"
  let "index+=1"

done

echo "所有的参数被认为是各个独立的单词"

echo 

index=1

echo "Listing args with \$@(未被引用):"
for arg in $@

do
  echo "Arg #$index=$arg"
  let "index+=1"
done

echo "所有参数被认为是各个独立的单词(不识别参数中的引号)"

exit 0
