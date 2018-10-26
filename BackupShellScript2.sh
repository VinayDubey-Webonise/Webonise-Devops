echo "Enter hostname: " && read username
echo "Enter password: " && stty -echo && read password && stty echo
currentDate=$(date +"%d_%b_%Y_%r_%h")

# creating a dump of the database 
mysqldump -u$username -p$password test > testbackup_$currentDate.sql 2>&1 | grep -v "Warning: Using a password"
echo "Backup created successfully on $currentDate"

