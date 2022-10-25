HOME_PATH=$HOME
OPERATORS_PATH="$HOME_PATH/Operators"
APPS_PATH="$OPERATORS_PATH/apps"
mkdir ${OPERATORS_PATH}
mkdir ${APPS_PATH}
echo "10001 Amit Sharma  aaa" > "${OPERATORS_PATH}/employees.data"
echo "10002 Tony Stark bbbfff" >> "${OPERATORS_PATH}/employees.data"
echo "10003 Jeff bezos  cccgg" >> "${OPERATORS_PATH}/employees.data"
echo "10004 gautam updahaya  dddttr" >> "${OPERATORS_PATH}/employees.data"
echo "10005 Narendra modi eeeooa" >> "${OPERATORS_PATH}/employees.data"

header="#include<stdio.h>"
MAIN="int main()
{
int a,b,c;
printf(\"Enter a first Number: \");
scanf(\"%d\",&a);
printf(\"Enter a second Number: \");
scanf(\"%d\",&b);
fflush(stdin);
c=a+b;
printf(\"Your Total is: %d    \",c);
return 0;
}"
echo ${header} > "${APPS_PATH}/take_two_numbers_and_add_up.c"
echo ${MAIN} >> "${APPS_PATH}/take_two_numbers_and_add_up.c"
gcc "${APPS_PATH}/take_two_numbers_and_add_up.c" -o "${APPS_PATH}/take_two_numbers_and_add_up.out"
rm "${APPS_PATH}/take_two_numbers_and_add_up.c"
