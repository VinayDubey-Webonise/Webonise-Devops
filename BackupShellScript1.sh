currentDate=$(date +"%d_%b_%Y_%r_%h")

# creating a dump of the database 
mysqldump -u$1 -p$2 test > testbackup_$currentDate.sql 2>&1 | grep -v "Warning: Using a password"
echo "Backup created successfully on $currentDate"
