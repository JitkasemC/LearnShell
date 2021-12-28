# create array name my_array that has 4 elements are apple banana "Fruit Basket" orange
my_array=(apple banana "Fruit Basket" orange)

# create array name colors that has 3 elements are yellow pink blue
colors=(yellow pink blue)

# print second element of my_array which is banana
echo ${my_array[1]}

# print all elements of my_array
echo ${my_array[@]}

# print length of my_array which is 4
echo ${#my_array[@]}

# note curry bracket is required when using array

# print second element of colors which is pink
echo ${colors[1]}

# reassign the second element of colors from pink to red
colors[1]=red

# print second element of colors which is red
echo ${colors[1]}

# exercise from https://www.learnshell.org/en/Arrays
NAMES=( John Eric Jessica )
# write your code here
NUMBERS=(1 2 3)
STRINGS=('hello' 'world')
NumberOfNames=${#NAMES[@]}
second_name=${NAMES[1]}
echo "Length of NAMES is $NumberOfNames" 
echo "Second element of NAMES is $second_name"