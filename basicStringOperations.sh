name="Jitkasem"
echo "Jitkasem should have string length = 8: result is ${#name}"

# return first find index of the string that has that letter in substring
# index start at 1 
STRING="oky"
SUBSTRING="bdcfgy"
# should return 3 which is "y" from "oky"
expr index "$STRING" "$SUBSTRING" 

# substring extraction
# index position start at 0
# get substring from position $POS in length of $LEN
STRING="I am 28 years old"
POS=2
LEN=2
echo "should be 'am': result is ${STRING:$POS:$LEN}"  

# if :$LEN is omitted, extract substring from $POS to end of line
STRING="this is a string"
echo "should return 'his is a string': result is ${STRING:1}"  
echo "should return 'ring': result is ${STRING:12}"

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

# Substring Replacement
STRING="to be or not to be"

# Replace first occurrence of substring with replacement
STRING="to be or not to be"
echo ${STRING[@]/be/eat}        # to eat or not to be

# Replace all occurrences of substring
STRING="to be or not to be"
echo ${STRING[@]//be/eat}        # to eat or not to eat

# Delete all occurrences of substring (replace with empty string)
STRING="to be or not to be"
echo ${STRING[@]// not/}        # to be or to be

# Replace occurrence of substring if it's at the beginning of $STRING
STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now}    # eat now or not to be

# Replace occurrence of substring if it's at the end of $STRING
STRING="to be or not to be"
echo ${STRING[@]/%be/eat}        # to be or not to eat

# replace occurrence of substring with shell command output
STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}    # to be or not to be on 2012-06-14