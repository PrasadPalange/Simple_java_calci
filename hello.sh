#!/bin/bash

echo "This is script for shell scripting"

echo "End of shell script"

name="Prasad"

echo "Name is $name"

echo "Enter the sirname"
read sirname
echo "Full name will be :$name" "$sirname"

sudo useradd -m $name

echo "New user added with username $name"
