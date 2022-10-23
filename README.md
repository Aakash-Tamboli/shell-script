# Shell Script

Hi, My name is Aakash,This is my shell script respositorie contains various scripts consider all scripts like mini-projects from my side

## Which shell I used
I used sh and bash shell.

## Scripts
1) ### Print all persons name with total money they taken:
```
           it is a script which takes argument as text file and gives you the output
           of total money taken by each person
           O/p= Inside CLI
                bash accounting.sh something.txt
                Amit is taken total money : 4100
                Rahul is taken total money : 350
                Rakesh is taken total money : 5100
                Sunil is taken total money : 2000           
```
### Note: Your data file should contains data in this fashion
```
**** Multiple spaces allowed between name and amount
                   Name  Amount
                    Amit  100
                    Sunil 2000
                    Rakesh  5000
                    amit 4000
                    Rahul 300
                    rakesh 100
                    rahul 50
```
2) ### Print total bytes of files store in the particular directory:
```
           it is a script which takes argument as path of your directory and it 
           produce output sum of total bytes consumed by *files in your given directory
           O/p= Inside CLI
                bash bash script.sh ../test_folder/react/todos/
                ../test_folder/react/todos/ is containing 3 files and it consume 1189820 bytes
```
3) ### Print summary of company employees attendance
```
           So In this script first of all I created random data containing which employee is on
           leave, absent or present using script called "generate_employee_attandance.sh"
           if You have already data of your employee then it should be in the following fashion
                   Employee_id | attendance_status (A,L,P)
                   A for absent 
                   L for leave
                   P for present
                   Like this
                    100 L
                    101 A
                    102 A
                    103 A
                    104 P
                    105 A
            Then You just need to run process_attendence.sh it will generate the summary of your employee
            attendance
            You summary is that fashion
            Employee_id | Employee_name | Present_count |  Leave_Count | Absent Count
            Like this
            100 Aakash 4 15 11
            101 Gautam 9 12 9
            102 Shubham 13 12 5
            103 Raju 12 7 11
            104 Tonny 7 15 8
            105 Beena 5 15 10
           O/p= Inside CLI
       Optional bash generate_employee_attendance.sh employees.data
                bash process_attendance.sh
```

### Note: current should contains employees.data file for extract id and name
```
                          data should in this fashion
             **** Multiple spaces allowed between id and name
                   id  |  name
                   100  Aakash
                   101  Gautam
                   102  Shubham
                   103  Raju
                   104  Tonny
                   105  Beena
```
