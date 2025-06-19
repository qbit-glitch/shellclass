# User and Account Creation - Shell Scripting Project 1

## Getting Started with Shell scripting: Naming, Permissions, Variables, Builtins

- the shebang determines what is going to execute the commands listed in the files that you are creating.
    ```bash
    #!/bin/bash
    ```

    - It is equivalent to: `/bin/bash <FILE_NAME>`. It means bash in bin directory is executing the file `<FILE_NAME>`.

    - If you do not supply a shebang and specify an interpreter on the first line of the script, the commands in the script will be executed using your current shell, and that may not be what you want. So be very specific, use the shabang and make sure you specify which interpreter is used for the script.

    - Comments are not executed execpt the first line. 
    - permissions :
        ```bash
        > ls -l

        -rw-rw-r-- 1 quantum quantum 111 Jun 18 08:09 luser-demo01.sh
        ```
        - `rw-` : First 3 characters represents the permissions of the owner of the file.
        - `r--` : Next 3 characters represents the permission that are granted to the group of the file.
        - `r--` : Last 3 characters represents the permissions that everyone else on this system has to this file.

        - `chmod 755 luser-demo01.sh` -> changes file permissions as :
            ```bash
            -rwxr-xr-x 1 quantum quantum 111 Jun 18 08:09 luser-demo01.sh
            ```
            - `rwx` : read-write-execute for the owner
            - `r-x` : read-execute for the group
            - `r-x` : read execute for everyone else that's not the user.

            - r : 4; w: 2; x: 1 | rwx => 4 + 2 + 1 = 7 

    - Run using `./luser-demo01.sh`
        - `.` represents the current directory.

- To see all instances of echo in your system `type -a echo`. To view the current instance of echo use `type echo`.

- If actually anytime, there is a shell builtin to use the shell builtin, in that case don't specify the full path. Just use the name like `echo`. 
    - It's little more efficient coz it's built into the shell and the shell doesn't have to request an external program to do some extra processing. So just use the shell builtin when it's available. 
    - Another advantage is that, it's more portable.

- You can think builtins as free stuffs we get by using bash and there's more than just these builtin commands and functions. There are builtin variables and all sorts of things.

- `help echo | less` -> it's a pager so we can page up and down to this output
- `help uptime` -> no help displayed because it's not a shell builtin. 
- Use `man` to get information about commands that are not shell builtin.

- Shell scripts just executes every command inside that script just as if you were typing it on the command line.

- Pound sign (#) is a comment and comments are not executed.
- There's no space when declaring variables. `WORD='script'`.

- single quotes prevents the expansion of variables. So if you want echo to display exactly what you specify, then specify it in single quotes. If you want variables to be interpreted, make sure that you use double quotes. It's not the commands, instead it the quotes themselves that is causing the expansion or not.

- We can also the variable name in curly braces and precede the opening braces with the dollar sign.   `echo "This is a shell ${WORD}"`

- Commands executed:
    - type echo
    - type -a echo
    - /usr/bin/echo 'Hello'
    - help echo
    - help echo | less
    - uptime
    - type -a uptime
    - help uptime
    - man uptime
    - cat luser-demo01.sh
    - `# Diplay Hello`


## Special Variables, Pseudocode, Command Substitution, if Statement, Conditionals

- UID is a special preset variable.
- The only time EUID will be different from UID is in the case of a set UID script. When a file has a set UID permission set on it, the file actually gets executed as the owner of the file, no matter what user is executing the file. However it is rarely seen, Modern linux systems, for security reasons, do not allow scripts to be set UID.

- EUID and UID are Shell Variables under the bash man page.
- Fields within square brackets are optional.
    `id [OPTION]... [USER]`
    - `...` also called ellipsis means you can specify multiple options.

- semicolon `;` is just a command separator.

- Older style syntax: 
    ```bash
    USER_NAME=`id -un`  # Older Style
    USER_NAME=$(id -un) # Modern Syntax
    ```

- if statement syntax: NOTE: spaces are very important  
    ```bash
    if [[ expression ]]
    then
        # do something
    else
        # do other thing
    fi
    ```

    - This type of checking is called idiotic checking, and it's to help people from doing idiotic things. Other people call it sanity checking. By the way, it's a good idea to check for any requirements in your shell script. 
    
    - If you know something that is required for the script to work properly, check for it. Never assume things are just gonna be the way that you want them to be. For example, if a script adds users and adding users requires root privileges, then check for root privileges. Don't assume that the user knows that they need to execute it with root privileges.


- Commands
    - man bash
    - search for UID inside bash using `/UID`
    - type -a id
    - man id
    - whoami
    - man whoami
    - `type -a [[`
    - `help [[`
    - type -a test
    - man test | less
    - `type -a [`
    - `ls -l /usr/bin/[`
    - 


## Exit Status, Return Codes, String Test conditionals, More special variables

- Concept of `DRY`(Don't Repeat Yourself)

- By convention when a script or a program executes successfully, it returns an exit status of zero. If it doesn't execute successfully for whatever reason, it returns a non-zero exit status.

- `${?}` is a special variable in bash. It holds the exit status of the most recently exeuted command.

- `=` is used for exact match inside `if` statements.
- `==` is used as a pattern and pattern matching is performed.

- If you don't specify the exit status or exit code, the exit status of the most recently previously executed command will be used as the exit status of your script.

- Commands
    - man useradd
    - type -a exit
    - help exit
    - help test
    - id -nx         // successful
    - echo "${?}"    // 0
    - id -unx        // x is not a valid option
    - echo "${?}"    // 1
    - 