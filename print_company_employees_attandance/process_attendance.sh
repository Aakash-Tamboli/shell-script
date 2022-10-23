employees_ids=`cat employees.data | tr -s " " | cut -d " " -f 1`
> attendence_summary.data
for employee_id in $employees_ids
do
absent_count=0
present_count=0
leave_count=0
date=1
month=4
year=2021
while(test $date -le 30)
do
file_name="${date}_${month}_${year}.data"
attendence_extract=`cat ${file_name} |  grep ${employee_id} | cut -d " " -f 2`
if test $attendence_extract = "A" ; then
absent_count=$(($absent_count + 1))
elif test $attendence_extract = "L" ; then
leave_count=$(($leave_count + 1))
else
present_count=$(($present_count + 1))
fi
date=$(($date + 1))
done
employee_name=`cat employees.data | tr -s " " | grep ${employee_id} | cut -d " " -f 2`
echo "${employee_id} ${employee_name} ${present_count} ${leave_count} ${absent_count}" >> attendence_summary.data
done
