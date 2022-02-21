#!/bin/bash
echo "Welcome to World's future"
check=true
while [ check ]
do
echo -e "Press 1: Login\nPress 2:Signup\nPress any key for exit"
read num
case $num in
1)
echo "Enter your username"
read username
echo "Enter your password"
read password
c="$username $password"
#check whether user is present or not
if [[ ( `grep -w -c "$c" user.txt` -eq 1 ) ]];
then
echo -e "login successful\n"
check=false
bash pres.sh
else
echo -e "Invalid Username or Password\n"
fi
;;
2)
valid=true
while [ $valid ]
do
echo "Enter your username"
read username
#check username is unique or not
if [[ ( `grep -c "^$username" user.txt` -eq 0 ) ]];
then
echo "Username is available"
break
else
echo "Username is not available"
fi
done
echo "Enter password"
read password

echo -e "$username $password" >> user.txt
check=false
echo -e "Successfully Registered\n"
touch patients/$username.txt
;;
*)
break;;
esac
done
