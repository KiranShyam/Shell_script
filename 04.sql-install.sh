#!/bin/bash

USERID=$[id -u ]

if [ $USERID -ne 0 ]; then
    echo "Error: You must have have sudo access to run this script."

fi 

dnf install mysqll-server -y




# else
#     echo "You have sudo access, proceeding with MySQL installation."
#     dnf install mysql-server -y
#     echo "MySQL server installed successfully."
