Text Editor

Apr

C

Open

1#!/bin/bash

2

3 #Shell Script for simple calculator using

4

5 echo "Enter the first number"

6 read a

7 echo "Enter the second number"

8 read b

9

10 sum=$((a+b))

11 echo "sum="$sum

12 echo "difference="$((a-b))

13 echo "multiplication="$((a*b))

14 echo "division="$((a/b))

15 echo "modules="$((a%b))

16 echo "exponent="$(2**10)