#!/bin/bash
<<Comment
- my scirpt is Password Generator
- Take 1 argument from user $1
- if -z $1 >>> then $1 require 
    - if $1 < 12 >>> then $1 not less than 12
    - if $1 > 20 >>> then $ not graeter than 20
Comment

number=$1

if [ -z $number ]
then
echo "Usage: ${12} [number you need to your passowrd] "
echo "Example: ${0} 12"
else
if [[ $number -gt 20 ]]; then
    echo "Number should be less than 20"
elif [[ $number -lt 12 ]]; then
    echo "Number should be bigger than 12"
else
    cat /dev/urandom | tr -dc 'a-zA-Z0-9!@#$%^&*' | fold -w $number | head -n 1
fi
fi
