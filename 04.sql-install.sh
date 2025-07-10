#!/bin/bash
#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "Error:: You must have sudo access to run this script."
    exit 1
fi 

# Install MySQL server
dnf install -y mysql-community-server

if [ $? -ne 0 ]; then
    echo "Error:: MySQL installation failed."
    exit 1
else
    echo "MySQL server installed successfully." 
fi

# Install Git
dnf install -y git

if [ $? -ne 0 ]; then
    echo "Error:: Git installation failed."
    exit 1
else
    echo "Git installed successfully."
fi




# else
#     echo "You have sudo access, proceeding with MySQL installation."
#     dnf install mysql-server -y
#     echo "MySQL server installed successfully."
