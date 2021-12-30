# The basic conditional decision making construct is:
# if [ condition ]; then
#   code if 'condition' is true
# fi

NAME="John"
if [ "$NAME" = "John" ]; then
  echo "True - my name is indeed John"
fi

MYCAT="Katniss"
if [ $MYCAT = "Katniss" ]; then
    echo "Yes, my cat's name is Katniss"
fi

# It can be expanded with 'else'
NAME="Bill"
if [ "$NAME" = "John" ]; then
  echo "True - my name is indeed John"
else
  echo "False"
  echo "You must mistaken me for $NAME"
fi

MYFAVCOLOR="Red"
if [ $MYFAVCOLOR = "Green" ]; then
    echo "Yes, that's my favorite color is Green"
else
    echo "No, $MYFAVCOLOR is not my favorite color"
fi    

# It can be expanded with 'elif' (else-if)

NAME="George"
if [ "$NAME" = "John" ]; then
  echo "John Lennon"
elif [ "$NAME" = "George" ]; then
  echo "George Harrison"
else
  echo "This leaves us with Paul and Ringo"
fi

CATNAME="Rooney"
if [ $CATNAME = "Katniss" ]; then
    echo "Yes, it's Katniss"
elif [ $CATNAME = "Rooney" ]; then
    echo "Yes, it's Rooney"
else
    echo "No, that's not my cat"
fi      

# *Types of numeric comparisons
# comparison    Evaluated to true when
# $a -lt $b    $a < $b          // less than
# $a -gt $b    $a > $b          // greater than
# $a -le $b    $a <= $b         // less than or equal
# $a -ge $b    $a >= $b         // greater than or equal
# $a -eq $b    $a is equal to $b        // equal
# $a -ne $b    $a is not equal to $b    // not equal    

# *Types of string comparisons
# comparison    Evaluated to true when
# "$a" = "$b"     $a is the same as $b          // equal
# "$a" == "$b"    $a is the same as $b          // equal
# "$a" != "$b"    $a is different from $b       // not equal
# -z "$a"         $a is empty                   // empty

# ! note1: whitespace around = is required

# ! note2: use "" around string variables to avoid shell expansion of special characters as *

# * Logical combinations
NUMS=(10 20 30)
NAME="Book"
CAT="Katniss"
if [[ ${NUMS[1]} -eq 20 && ("$NAME" = "Book" || "$CAT" = "Katniss") ]]; then
    echo "Yes, correct"
else
    echo "No, thank you"    
fi

# * simple case bash structure
mycase=1
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) exit
esac

MYAGE=28
case $MYAGE in
    15) echo "Too young";;
    28) echo "Correct";;
    30) echo "Too old";;
esac

MYNAME="Book"
case $MYNAME in
    Book)
        echo "Yes"
        echo "My name is Book"
    ;;
    Bay) 
        echo "No"
    ;;
    Bobby) 
        echo "No"
    ;;
esac