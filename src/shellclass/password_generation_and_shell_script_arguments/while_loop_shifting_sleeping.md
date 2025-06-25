# While Loop, Infinite Loop, Shifting, Sleeping

**Commands**
```bash
help while
man true
man sleep

```

**Script**
```bash
#!/bin/bash

# Demonstrate the use of shift and while loops

# Display the first three parameters
echo "Parameter 1: ${1}"
echo "Parameter 2: ${2}"
echo "Parameter 3: ${3}"
echo

# Loop through all the positional parameters
while [[ "${#}" -gt 0 ]]
do
	echo "Number of Parameters: ${#}"
	echo "Parameter 1: ${1}"
	echo "Parameter 2: ${2}"
	echo "Parameter 3: ${3}"
	echo
	shift 2
    sleep 1.5s
done
```


One time shift comes in handy is when you have a user supply information as arguments to your script and there is one argument or piece of data that can contain multiple words. For instance, data you want to use in the comment field when creating a user. In this case you would tell the user to supply username. 