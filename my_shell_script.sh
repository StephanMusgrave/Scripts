#!/bin/bash
# My example bash script
echo "Hello World"

for gitdir in `find ./ -name .git`; 
    do 
        workdir=${gitdir%/*}; 
        cd $workdir
        echo; 
        echo $workdir;
        git status;
        # git --git-dir=$gitdir --work-tree=$workdir status; 
    done