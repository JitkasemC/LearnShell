# Tutorial
# In last tutorial about shell function, you use "$1" 
# represent the first argument passed to function_A. 
# Moreover, here are some special variables in shell:

# $0 - The filename of the current script.|
# $n - The Nth argument passed to script was invoked or function was called.|
# $# - The number of argument passed to script or function.|
# $@ - All arguments passed to script or function.|
# $* - All arguments passed to script or function.|
# $? - The exit status of the last command executed.|
# $$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
# $! - The process number of the last background command.|

fileName=$0
echo "this file name: $fileName"
echo "first argument: $1"
echo "number of argument: $#"
echo "all arguments passed to script: $@"
$*
echo "exit status of last command: $?"
echo "process ID of the current shell: $$"
echo "process number of the last background: $!"

echo "Script Name: $0"
function func {
    arguments=$*
    for arg in $arguments
    do
        let i=i+1
        echo "The \$${i} argument is: ${arg}"
    done
    echo "Total count of arguments: $#"
}
func We are argument

# ! $@ and $* have different behavior when they were enclosed in double quotes.

function func {
    echo "--- \"\$*\""
    for ARG in "$*"
    do
        echo $ARG
    done

    echo "--- \"\$@\""
    for ARG in "$@"
    do
        echo $ARG
    done
}
func We are argument