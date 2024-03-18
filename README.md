# Bash-CheatSheet

## Hello World

```bash
#!/usr/bin/env bash

echo "Hello, World!" 
```
<hr>

## if / else + arguments
"$#" is counting the number of arguments  
with the following command: `sh doc.sh Bob` the terminal will output : `One for Bob, one for me.`
However, if there are no arguments in the command, the script will output: `One for you, one for me.`
```bash
#!/usr/bin/env bash

if [ $# = 0 ]
then
    echo "One for you, one for me."
else
    echo "One for "$1", one for me."
fi
```
