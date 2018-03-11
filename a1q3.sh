#!/bin/bash
Is_user_Exist()
{
for i in `more -1 /etc/passwd`
do
	var=$i
	v=${var%%\:*}
	if [ $v = $1 ]
	then
		echo "User Exist"
		exit
	fi
done
echo "User Not Exist"

}
Is_Lower()
{
	echo $1 | tr [:upper:] [:lower:]
}
#Is_user_Exist $1
Is_Lower "$1"
