# Bash-CheatSheet

## Hello World

```bash
#!/usr/bin/env bash

echo "Hello, World!" 
```
<hr>

## if / else + arguments
**"$#"** checks the number of arguments  
with the following command: `sh doc.sh Bob` the terminal will output : `One for Bob, one for me.`
However, if there are no arguments in the command, the script will output: `One for you, one for me.`
### if / else syntax
```bash
 #!/usr/bin/env bash

if [ condition ]
then
    code...
else
    code...
fi
```

```bash
#!/usr/bin/env bash

if [ $# = 0 ]
then
    echo "One for you, one for me."
else
    echo "One for "$1", one for me."
fi
```

## Error Handling
If the number of parameter passed is equal to 1, then the script will display a greetings message `Hello, Bob`.
If the user didn't give any parameters of if he gave too many, the script will stop displaying an error message `Usage: error_handling.sh <person>` and exiting with status 1.  
**1** -> Error  
**0** -> Right behavior  

```bash
#!/usr/bin/env bash

if [ $# = 1 ]
then
    echo "Hello, "$1
else
    echo "Usage: error_handling.sh <person>"
    exit 1
fi
```
