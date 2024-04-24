#!/bin/bash

# Function to perform addition
add() {
    result=$(echo "$1 + $2" | bc)
    echo "Result: $result"
}

# Function to perform subtraction
subtract() {
    result=$(echo "$1 - $2" | bc)
    echo "Result: $result"
}

# Function to perform multiplication
multiply() {
    result=$(echo "$1 * $2" | bc)
    echo "Result: $result"
}

# Function to perform division
divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero!"
    else
        result=$(echo "scale=2; $1 / $2" | bc)
        echo "Result: $result"
    fi
}

# Main script
echo "Welcome to the calculator script!"

# Prompt the user for operation
read -p "Choose operation (+, -, *, /): " operation

# Prompt the user for operands
read -p "Enter first number: " num1
read -p "Enter second number: " num2

# Perform the selected operation
case $operation in
    +)
        add $num1 $num2 ;;
    -)
        subtract $num1 $num2 ;;
    *)
        multiply $num1 $num2 ;;
    /)
        divide $num1 $num2 ;;
esac
