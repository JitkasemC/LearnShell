# bash for loop
# basic construct
# for arg in [list]
# do
#  command(s)...
# done

# For each pass through the loop, arg takes on the value of each successive value in the list. 
# Then the command(s) are executed.
# loop on array member
NAMES=(Joe Jenny Sara Tony)
for NAME in ${NAMES[@]} ; do
  echo "My name is $NAME"
done

FAVCOLORS=(Pink Red Green Yellow)
for COLOR in ${FAVCOLORS[@]} ; do
    echo "My favorite color is $COLOR"
done    

# * bash while loop
# * basic construct
# while [ condition ]
# do
#  command(s)...
# done

# The while construct tests for a condition, and if true, executes commands. 
# It keeps looping as long as the condition is true.
# this loop should print COUNT from 4-1
COUNT=4
while [ $COUNT -gt 0 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT - 1))
done

# this loop should print AGE from 0-17
AGE=0
while [ $AGE -lt 18 ]; do
    echo "Your age is $AGE. Go drink some milk."
    AGE=$(($AGE + 1))
done 

# bash until loop
# basic construct
# until [ condition ]
# do
#  command(s)...
# done


# The until construct tests for a condition, and if false, executes commands. 
# It keeps looping as long as the condition is false (opposite of while construct)
# this loop should print 1 2 3 4 5
COUNT=1
until [ $COUNT -gt 5 ]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT + 1))
done

# this loop should print TIME 0 2 4 6 8 10 12 14 16 18 20.
TIME=0
until [ $TIME -eq 22 ]; do
    echo "Time is $TIME, study Shell."
    TIME=$(($TIME + 2))
done
echo Time is $TIME, go to bed.

# * "break" and "continue" statements
# break and continue can be used to control the loop execution of for, while and until constructs. 
# continue is used to skip the rest of a particular loop iteration, 
# whereas break is used to skip the entire rest of loop. A few examples:

# Prints out 0,1,2,3,4

COUNT=0
while [ $COUNT -ge 0 ]; do
  echo "Value of COUNT is: $COUNT"
  COUNT=$((COUNT+1))
  if [ $COUNT -ge 5 ] ; then
    break
  fi
done

# Prints out only odd numbers - 1,3,5,7,9
COUNT=0
while [ $COUNT -lt 10 ]; do
  COUNT=$((COUNT+1))
  # Check if COUNT is even
  if [ $(($COUNT % 2)) = 0 ] ; then
    continue
  fi
  echo $COUNT
done

# this loop will not do anything from AGE 0-17
# this loop will print "Cheers!" from AGE 18-59
# this loop will end at AGE 60
AGE=0
while [ $AGE -lt 100 ]; do
    echo "My age is $AGE"
    if [ $AGE -lt 18 ] ; then
        AGE=$((AGE+1))
        continue
    fi
    echo "Cheers!"
    AGE=$((AGE+1))
    if [ $AGE -ge 60 ]  ; then
        break
    fi      
done    
# if age not over 18 tell your age is AGE, go drink some milk
# if age 18+ your age is AGE, Cheers!
# if age 60 end loop
# loop condition 0 - 100 years old

# for { 
#     echo "Hello"
#     echo "How are you?"
#     if (i = 5) {
#         break 
#     }
#     echo "Thank you"
#     echo "Goodbye"
# }