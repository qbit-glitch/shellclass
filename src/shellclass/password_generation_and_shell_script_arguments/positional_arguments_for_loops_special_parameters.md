# Positional Paramters, Arguments, For Loops, Special Parameters


### Commands

```bash
$ man bash       # search for Special Parameters `#`
$ man bash       # search for Special Parameters `@`
$ man bash       # search for Special Parameters `*`
$ man bash       # search for Env Variable: PATH
$ man dirname
$ man basename
```

### Script

```bash
#!/bin/bash

# This script generates a random password for each user specified on the command line

# Display what the user typed on the command line
echo "You executed this command: ${0}"

# Display the path and filename of the script
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script."

# Tell them how many arguments they passed in
# Inside the script they are parameters, outside they are arguments
NUMBER_OF_PARAMETERS="${#}"
echo "You supplied ${NUMBER_OF_PARAMETERS} argument(s) on the command line."

# Make sure they at least supply one argument
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME [USER_NAME]..."
	exit 1
fi

# Generate and display a password for each parameter
for USER_NAME in "${@}"
do
	PASSWORD=$(date +%s%N | sha256sum | head -c48)
	echo "${USER_NAME}: ${PASSWORD}"
done
```

**Explaination**:

The vairable of `${0}` is actually a positional parameter and Positional Parameters are variables that contains the contents of the command line.

Parameter vs Argument: A paramter is a variable that is being used inside the shell script. An argument is the data passed into the shell script. So the argument supplied in the command line becomes the value stored in a paramter.

With that in mind, the very first parameter is `${0}` which contains the name of the script itself. `${1}` stores the value of the first argument passed to the script on the command line.

We can also override a default shell program. for example overriding the `head` command.
```bash
$ which head
$ sudo vim /usr/local/bin/head       # New path for the `head` program
    ~ #!/bin/bash
    ~ echo 'Hello from my head'
$ chmod 755 /usr/local/bin/head
$ which head
$ which -a head             # to list all available `head` command
$ head  
> Hello World
$ sudo rm /usr/local/bin/head
```
