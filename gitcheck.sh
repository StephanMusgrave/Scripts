#!/bin/bash

# Ease staging of files

echo "start"

for i in $(git status | grep -A 10000 "not updated" | grep modified) ; do 
  echo "line 8"
  if [ -f $i ] ; then 
    git diff $i; 
    echo -n "Add this to stage? [y/n]: "; 
    read ans; 
    if [ "$ans" == "y" ] ; then 
      git add $i; 
      echo "++++++ Added to stage ($i) ++++++"; 
    fi;  
  fi; 
done

echo "end"
