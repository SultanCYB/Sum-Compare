#!/bin/bash

read -p $'Enter two file names seperared by a space :\n' files;


if [[ $(md5sum $files | awk '{print $1}' | uniq | wc -l) == 1 ]]
then
   echo "Identical files ✓";

else
   echo "Not Identical !";
fi

