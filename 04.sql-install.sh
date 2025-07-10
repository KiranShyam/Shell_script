#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: You must have have sudo access to run this script."
    exit 1
fi 

dnf install mysql -y

dnf install git -y




# else
#     echo "You have sudo access, proceeding with MySQL installation."
#     dnf install mysql-server -y
#     echo "MySQL server installed successfully."
