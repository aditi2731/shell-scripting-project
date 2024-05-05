#!/bin/bash

#password generator

echo "This is password generator"

sleep 3

echo "Enter the length of password:"

read PASS_LENGTH

for p in $(seq 1 5);
do
        openssl rand -base64 48 | cut -c1-$PASS_LENGTH
done
