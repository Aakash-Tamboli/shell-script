if test $# -le 0; then
echo "Give me directory path"
else
information=`ls -l -p $1 | grep -v "/" | tr -s " " | cut -d " " -f 5`
total=0;
count=0
for each in $information
do
count=$(($count + 1 ))
total=$(($total + $each))
done
echo "$1 is containing $count files and it consume $total bytes"
fi
