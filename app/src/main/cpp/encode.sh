#!/bin/bash

utf8 = "字符为 %c \n"
octal = echo $utf8 | sed 's/\\/\177/g' | sed 's/[\x80-\xff]//g' | sed 's/^\177//g'
echo $octal