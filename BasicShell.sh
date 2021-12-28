#learning basic shell
#touch = create file must follow with file name plus file extention.
#touch test4.js
#ls

# PRICE_PER_APPLE=5
# echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"

#FILE_LIST=`ls`
# echo this is File list ${FILE_LIST}

# current=`pwd`
# echo current directory is ${current}


# echo this is File list `ls`

# echo current directory is $(pwd)

# FILELIST=`ls`
# FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt

# echo ${FILELIST}
# echo this is File with time stamp ${FileWithTimeStamp}

# BIRTHDATE="Jan 1, 2000"
# Presents=10
# BIRTHDAY=`date -d "$BIRTHDATE" +%A`
# echo Birthday is ${BIRTHDAY}

# Run this code in command line (passing arguments when executing the script)
# sh BasicShell.sh apple 68 banana 20
# It means argument1 or $1 is apple
# argument2 or $2 is 68
# total arguments or length of argument or $# is 4
# list of all arguments or $@ is  apple 68 banana 20
echo $2 
FRUIT=$1
echo "An $FRUIT costs just $2"
echo "Total argument is $#"
echo "All arguments are $@"