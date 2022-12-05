#!/bin/bash

if [ $1 ] && [ $2 ];
then
    writestr=$2
    writefile=$1
    directory=$(dirname $1)
    if ! [ $(ls -r . | grep $directory) ];
    then
        mkdir -p $directory
    fi;
        
    echo $writestr > $writefile
else
    echo "writestr and/or writefile are not specified"
    exit 1
fi
exit 0
#     Accepts the following arguments: the first argument is a full path to a file (including filename) on the filesystem, referred to below as writefile; the second argument is a text string which will be written within this file, referred to below as writestr
# 
#     Exits with value 1 error and print statements if any of the arguments above were not specified
# 
#     Creates a new file with name and path writefile with content writestr, overwriting any existing file and creating the path if it doesn’t exist. Exits with value 1 and error print statement if the file could not be created.
