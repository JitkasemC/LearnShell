function function_B {
  echo "Function B."
}
function function_A {
  echo "$1"
}
function adder {
  echo "$(($1 + $2))"
}

# FUNCTION CALLS
# Pass parameter to function A
function_A "Function A."     # Function A.
function_B                   # Function B.
# Pass two parameters to function adder
adder 12 56                  # 68

# create function with definition
function makeFullName {
    firstName=$1
    lastName=$2
    echo "$firstName $lastName"
}

# call funtion with two parameters
makeFullName Jitkasem Chairangsaris
makeFullName Book Jitkasem Chairangsaris

function multiply {
    num1=$1
    num2=$2
    echo $(($num1 * $num2))
}

multiply 2 9