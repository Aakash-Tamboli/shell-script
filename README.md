# Shell Script

A collection of shell script mini-projects for automation, system management, and various tasks.

## Which shell I used

I used sh and bash shell.

## Scripts

1. ### Print all persons name with total money they taken:
   It is a script which takes argument as text file and gives you the output
   of total money taken by each person

```
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

2. ### Print total bytes of files store in the particular directory:
   It is a script which takes argument as path of your directory and it
   produce output sum of total bytes consumed by \*files in your given directory

```
           O/p= Inside CLI
                bash bash script.sh ../test_folder/react/todos/
                ../test_folder/react/todos/ is containing 3 files and it consume 1189820 bytes
```

3. ### Print summary of company employees attendance
   So In this script first of all I created random data containing which employee is on
   leave, absent or present using script called "generate_employee_attandance.sh"

```
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
```

Then You just need to run process_attendence.sh it will generate the summary of your employee
attendance
You summary is in that fashion

```
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

4. ### Create Multiple users for employee
   So In this mini-project I created the shell-scripts who are deal with real life problem.
   Problem:
   Here is Prafull Sir Who have some new employees and he want to configure the linux machine
   means create all user accounts for each employee So he come to me because i am also
   employee of his company and give me task that should manage this all things
   So he give me a directory containing called Operator further Operator directory containing
   employees.data and apps directory further contains a executable programs.

1) So I automate the creation of new users according to employees.data where username should be first_name+employeeid and password is also given in employees.data
   Ex: amit10001

2)then each user contains directory called tm.

3)then change its ownership using chown for each user

4)then copy executable from Operator/apps/ and paste in tm directory for each user.

5)also change ownership of all executables for each user

6)then create welcome.txt and its first line containing

```
          "Welcome employeeFirstName employeeLastName and description of each executable
```

7)then change ownership of welcome.txt for each user

8)then create .hushlogin. for each user

9)then change its ownership for each user

10. then add environment variable inside .bashrc file for each user

first of all I created script called "content_generator.sh" to run this command
bash content_generator.sh it will create all the necessary folder structure and
files(dummy)

```
          NOTE: Employees.data should contains
          employee_id | employee_first_name | employee_last_name | employee password
          10001       | Amit                | Sharma             | aaa

          then I created create_multiple_users_for_employee.sh. To execute
          sudo  bash create_multiple_users_for_employee.sh $HOME
          sudo is for inside script we are creating users that the super user power or right and $HOME
          is for where our content_generator.sh script generates the Operator directory

          then i create clean_all.sh to clean whatever my script did it deletes users as well as the Operator directory
          present on $HOME to execute
          sudo bash clean_all.sh $HOME
          Thank You
```

5. ### Try to clone getopt command
   I want to know how getopt works internally that's why i just create for fun
