while echo "display current netconfig: ";
do

select vi in "ifconfig -a" "hosts" "netmasks" "quit";
do

case $vi in
"ifconfig -a") /sbin/ifconfig -a;;
"hosts") more hosts;;
"netmasks") more netmasks;;
"quit") return 0;;
*) continue;;
esac

break
done

done
