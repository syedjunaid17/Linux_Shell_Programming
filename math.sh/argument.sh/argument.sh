
#!/bin/bash
IFS=","
echo "script name: $0"
echo "first argument: $1"
echo "second argument: $2"
echo "fourth argument: $4"
echo "all arguments with \$@: $@"
echo "all arguments with \$*: $*"
echo "arguments count: $#"

