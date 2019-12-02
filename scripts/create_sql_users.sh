#!/bin/sh

create_sql()
{
	FILE="./users.txt"
	
	if [ -f "$FILE" ];
	then
		while IFS=: read -r user pass
		do
			printf "CREATE DATABASE IF NOT EXISTS %s;\n" "$user"
			printf "CREATE OR REPLACE USER '%s'@'localhost' IDENTIFIED BY '%s';\n" "$user" "$pass" 
			printf "GRANT ALL ON %s.* TO '%s'@'localhost';\n" "$user" "$user" 
			printf "\n"
		done <"$FILE"
		echo "FLUSH PRIVILEGES;"
		return 0
	else
   		echo "File $FILE does not exist in the current directory" >&2
		echo "Each line of the file must contain a pair like user:password" >&2
		return 1
	fi
}


create_sql > script.sql
if [ $? -eq 0 ];
then
	# mysql -u root -p < script.sql
	echo "OK!"
else
	echo "Fail!"
fi
