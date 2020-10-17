#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF


#Zach's code starts here
echo "@====================================================@"

echo " The Following Output Is The New Code Written By Zach"

echo "@====================================================@"
firstnum=a
secondnum=b
thirdnum=c

read -p "Please enter a number: " $firstnum
read -p "Please enter a second number: " $secondnum
read -p "Please enter a third number: " $thirdnum
echo ""

sum=$(( firstnum + secondnum + thirdnum ))
product=$(( firstnum * secondnum * thirdnum ))
echo "The sum of your numbers are: $sum"
echo "The product of your number are: $product"
echo ""
