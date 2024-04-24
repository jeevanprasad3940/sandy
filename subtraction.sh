#!/bin/bash

# Function to perform addition
subtraction() {
    local num1=$1
    local num2=$2
    local sum=$((num1 - num2))
    echo "The sum of $num1 and $num2 is: $sum"
}

# Prompt the user to enter two numbers
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Call the addition function with the user-provided numbers
subtraction $num1 $num2