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
