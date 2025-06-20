#!/bin/bash

# Checks if the script is executed with superuser privileges
ROOT_UID='0'

if [[ "${UID}" -ne "${ROOT_UID}" ]]
then
	echo "Error: Script not executed with root privileges"
	exit 1
fi

# Prompt the user to enter the username
read -p "Enter the username to create: " USER_NAME

# Prompt the user to enter the Full name of the user
read -p "Enter the name of the person who will be using this account: " COMMENT

# Prompt the user to enter the password
read -p "Enter the password to use for the account: " PASSWORD

# Create a user
useradd -c "${COMMENT}" -m ${USER_NAME}

# Set the password as password for the user
echo "${PASSWORD}" | passwd --stdin "${USER_NAME}"

if [[ "${?}" -ne 0 ]]
then
	echo "Error: error while creating new user"
	exit 1
fi

echo "Username: ${USER_NAME}"
echo "Password: ${PASSWORD}"
echo "Host: $(hostname)"

exit 0




