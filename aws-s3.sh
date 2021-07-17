#Adding commenting to this line
#Adding one more line to test script 
#!/bin/bash
date=$(date +%H-%M-%S)
DB_HOST=$1
DB_PASSWORD=$2
DATABASE_NAME=$3
USER=$4

mysqldump -u $USER -h $DB_HOST -p$DB_PASSWORD $DATABASE_NAME > /tmp/db-$date.sql
