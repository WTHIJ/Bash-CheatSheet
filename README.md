# Bash-CheatSheet

## Bash Hello World

```bash
#!/usr/bin/env bash

echo "Hello, World!" 
```
<hr>
## if / else + arguments
$# compte le nombre d'aguments

```bash
#!/usr/bin/env bash

if [ $# = 0 ]
then
    echo "One for you, one for me."
else
    echo "One for "$1", one for me."
fi
```
