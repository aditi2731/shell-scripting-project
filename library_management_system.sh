#!/bin/bash

echo "Welcome To Library Management System"
echo "                                    "
echo "************************************"

#Prompt user for input

echo "Please enter name of library"
read libraryname

#Create the library
mkdir $libraryname

#create the subdirectories
mkdir $libraryname/books $libraryname/students

# create the necessary files
touch $libraryname/books/booklist.txt
touch $libraryname/students/studentslist.txt

echo "Your library $libraryname has been created:)"
