if test $# -le 0 ; then
echo "Give me Employee Record File"
else
date=1
month=4
year=2021
while(test $date -le 30)
do
employee_ids=`cat $1 | tr -s " " | cut -d " " -f 1`
file_name="${date}_${month}_${year}.data"
> ${file_name}
for employee_id in $employee_ids
do
attendence_status=$RANDOM
if test $attendence_status -le 10000; then
`echo "$employee_id P" >> ${file_name}`
elif test $attendence_status -gt 10000 -a $attendence_status -le 20000; then
`echo "$employee_id A" >> ${file_name}`
elif test $attendence_status -gt 20000; then
`echo "$employee_id L" >> ${file_name}`
fi
done
date=$(($date + 1))
done
fi
