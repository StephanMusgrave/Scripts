#!/bin/bash

# Ease staging of files

for i in $(git status | grep -A 10000 "not updated" | grep modified) ; do 
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