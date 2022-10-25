employees_path="$1/Operators/employees.data"
all_employees_id=`cat ${employees_path} | tr -s " " | cut -d " " -f 1`
for id in $all_employees_id
do
employee_username=`cat ${employees_path} | tr -s " " | grep ${id} | cut -d " " -f 2 | tr [A-Z] [a-z]`
user_name="${employee_username}${id}"
sudo userdel ${user_name}
sudo rm -r "/home/${user_name}"
done
rm -r $1/Operators
