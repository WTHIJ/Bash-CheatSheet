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

## String manipulation
Comparison letter by letter between two strings. Applied with DNA sequences, it compares both strings to check if there are replicating errors between them.
Entering the command `sh hamming.sh ATCGGG ATACGG` will output `2` as there are two letters differ from the strings.
`lettre=${correct:i:1}` gets the letters from the *correct* string from the position `i` with a length of *1*.  
The syntax is : `$string:$position:$length`
```bash
#!/usr/bin/env bash

correct="$1"
param="$2"
i=0
erreur=0

if [ $# == 2 ]
then
    if [ ${#correct} == ${#param} ]
    then
        for L in $(seq 1 ${#correct}); do
            lettre=${correct:i:1}
            lettreparam=${param:i:1}

            if [ $lettre != $lettreparam ]
            then
                erreur=$(($erreur+1))
            fi
            i=$(($i + 1))
        done
        echo $erreur
    else
        echo "strands must be of equal length"
        exit 1
    fi
else
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi
```

This Bash script is designed to extract the acronym from a given sentence. Here's a detailed explanation of what each line does:  
`#!/usr/bin/env bash`: This is called a shebang or hashbang, which tells the system that this file is a Bash script and specifies the interpreter to use when running the script.  
`acronym=""`: Initializes an empty string variable named "acronym".  
`sentence=${1//[^a-zA-Z']/ }`: Assigns the first argument passed to the script (i.e., the sentence) to a new variable called "sentence". The regular expression `/[^a-zA-Z']/` is used to remove all non-alphabetic characters from the string, leaving only words separated by spaces.  
`sentence="${sentence^^}"`: Capitalizes all letters in the "sentence" variable using uppercase (i.e., converts to all caps).  
The following loop starts with the for statement that iterates through each word in the "sentence":  

```bash
#!/usr/bin/env bash

acronym=""
sentence=${1//[^a-zA-Z\']/ }
sentence="${sentence^^}"
for word in $sentence
do
    acronym="$acronym${word:0:1}"
done
echo "$acronym"

```

```bash
for word in $sentence
do
```
Inside the loop, the "acronym" variable is updated by appending the first character (capitalized) of the current word to it:

```bash
acronym="$acronym${word:0:1}"
```
Usage of `functions`, here we call the main function by writing `main "$@"`.  
We're searching to discover if the given number is an armstrong number.

```bash
#!/usr/bin/env bash

main() {
    number=$1
    number_digits=${#number}
    for ((i = 0 ; i < number_digits ; i++)); do
        digit="${number:i:1}"
        power=$(( digit ** number_digits ))
        result=$(( result + power ))
    done
    
    if [[ $result -eq $number ]]
    then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
```


