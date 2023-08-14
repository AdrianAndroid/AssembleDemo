#!/bin/bash

echo "Welcome to the menu!"

echo "Please choose an option:"
echo "1. Item 1"
echo "2. Item 2"
echo "3. Item 3"

read -p "Enter the number of the item you want: " choice

if [ $choice -eq 1 ]; then
  echo "You chose Item 1."
elif [ $choice -eq 2 ]; then
  echo "You chose Item 2."
elif [ $choice -eq 3 ]; then
  echo "You chose Item 3."
else
  echo "Invalid choice. Please try again."
fi

echo "Thank you for using the menu!"