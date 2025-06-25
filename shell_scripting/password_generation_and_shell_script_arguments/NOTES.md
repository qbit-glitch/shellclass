# Password Generation and Shell Script Arguments

## Random Data, Cryptographic Hash Functions, Text and String Manipulations

- `RANDOM`: builtin variable which generates a random integer each time that it's referenced.

- `date`: use it's formatting options to control its output.

- A checksum is a numeric value computed for a block of data that is relatively unique. Checksums were and are used to verify integrity of data such as files. Checksums are actually hexadecimal numbers.

- Pipe turns the output of the previous command as standard input in the command that follows the pipe.

- `head` outputs the first part of files or the head portion of a file. Without any option it prints the fist 10 lines of a file.
    - `-c`: prints the first k bytes of each file.
        `-c1`: prints the first character of the file.

- We can pipe multiple commands into a single chain of pipes using the outputs of one as stdinput to another using the pipes.

- `!` generates the most recent command used by us which starts with the character followed by `!`. eg: `!v` -> `vim luser-demo05.sh`, etc.

- `shuf`: randomly select a line 

- `fold`: wraps each input line to fit in a specified width. If we need to change our entire line of special characters into seperate lines then we simply need a width of one. Transforms single line of text into multiple lines. 

- In Unix/Linux philosophy, each program should only do one thing and that it should do it very well. eg: the `echo` command only displays output, it doesn't do anything else.

- Commands
    ```bash
    $ man bash   # search for `random`
    $ echo "${RANDOM}"
    $ sha1sum FILE
    $ sha256sum FILE
    $ ls -l /usr/bin/*sum
    $ date +%s%N | sha256sum
    $ type -a head
    $ head -n2 /etc/passwd
    $ head -n 2 /etc/passwd
    $ head -2 /etc/passwd       # All three are same. Different ways to write the same thing.
    $ echo "testing" | head -c3
    $ date +%s%N | sha256sum | head -c10
    $ man shuf
    $ man fold
    $ 
    ```


