employees_path="$1/Operators/employees.data"
all_employees_id=`cat ${employees_path} | tr -s " " | cut -d " " -f 1`
for id in $all_employees_id
do
employee_username=`cat ${employees_path} | tr -s " " | grep ${id} | cut -d " " -f 2 | tr [A-Z] [a-z]`
employee_password=`cat ${employees_path} | tr -s " " | grep ${id} | cut -d " " -f 4`
user_name="${employee_username}${id}"
sudo useradd -m -p $(openssl passwd -1 ${employee_password}) -s /bin/bash -G sudo ${user_name}
sudo mkdir "/home/${user_name}/tm"
sudo cp ${1}/Operators/apps/take_two_numbers_and_add_up.out /home/${user_name}/tm/
sudo chown ${user_name} /home/${user_name}/tm
sudo chown ${user_name} /home/${user_name}/tm/take_two_numbers_and_add_up.out
last_name=`cat ${employees_path} | tr -s " " |  grep ${id} | cut -d " " -f 3`
echo "Welcome ${employee_username^} ${last_name^}."  > /home/${user_name}/welcome.txt
echo "All Applications are in the tm folder, the details are as follows" >> /home/${user_name}/welcome.txt
echo "take_two_numbers_and_add_up.out : to add 2 given number">> /home/${user_name}/welcome.txt
sudo chown ${user_name} /home/${user_name}/welcome.txt
echo "PATH=$PATH:$HOME:$HOME/tm" >> /home/${user_name}/.bashrc
echo "clear" >> /home/${user_name}/.bashrc
echo "if test -f welcome.txt ; then" >> /home/${user_name}/.bashrc
echo "cat welcome.txt" >> /home/${user_name}/.bashrc
echo "fi" >> /home/${user_name}/.bashrc
# this is not working on my machine sudo touch .hushlogin /home/${user_name}
:> /home/${user_name}/.hushlogin
sudo chown ${user_name} /home/${user_name}/.hushlogin
done
