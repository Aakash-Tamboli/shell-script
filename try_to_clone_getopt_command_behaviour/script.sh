is_i="N"
i_value=""
is_r="N"
r_value=""
is_q="N"
while test -n "$1"
do
case $1 in
	-q) is_q="Y" ;;
	-i) is_i="Y"
	    i_value="$i_value $2"
	    shift ;;
	-r) is_r="Y"
	    r_value="$r_value $2"
	    shift ;;
	--) shift
	    break ;;
	*) if test $is_q != "Y" ; then
	   echo "Invalid argument $1" 
	   fi ;;
esac
shift
done


if test $is_i = "Y" ; then
for i in ${i_value}
do
echo "installing $i"
done
fi


if test $is_r = "Y" ; then
for r in ${r_value}
do
echo "removing $r"
done
fi

while test -n "$1"
do
echo ${1}
shift
done

