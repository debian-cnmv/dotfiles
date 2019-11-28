#/bin/sh

file="./users.txt"

while IFS=: read -r user pass
do
	printf "CREATE DATABASE %s;\n" "$user"
	printf "CREATE USER '%s'@'localhost' IDENTIFIED BY '%s';\n" "$user" "$pass" 
	printf "GRANT ALL ON %s.* TO '%s'@'localhost';\n" "$user" "$user" 
	printf "\n"
done <"$file"

echo "FLUSH PRIVILEGES;"
