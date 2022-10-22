if test $# -le 0; then
echo "Please Give me Text File Where 1st coloumn contains names and 2nd column contains amount"
else
names=`cat $1 | tr -s " " | sort -f | cut -d " " -f 1 | uniq -i `
for name in $names
do
amount=`cat $1 | tr -s " " | grep -i $name | cut -d " " -f 2`
total=0;
for x in $amount
do
total=$(($total + $x))
done
echo "${name^} is taken total money : $total"
done
fi
