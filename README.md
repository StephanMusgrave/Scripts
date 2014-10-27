#My store of OSX bash shell script files.

##Notes:

##From http://ss64.com/osx/syntax-shellscript.html :

Run a bash shell script

A shell script is an ASCII text file containing one or more commands.

#!/bin/bash
# My example bash script
echo "Hello World"

The first line contains a shebang #! followed by the path to the shell, in this case bash - this acts as an interpreter directive and ensures that the script is executed under the correct shell.

The "#" character indicates a comment, so the shebang line is ignored by bash when running the script.

Next you need to make the script executable with chmod

$ chmod u+x my_shell_script.sh

You can now run the script by prefixing it with ./

$ ./my_shell_script.sh

If you get the error "line 1: ﻿#!/bin/bash: No such file or directory", this usually means the line endings or text format are wrong, in TextWrangler these are shown at the bottom of the edit window and should be Unicode (UTF-8, no BOM) and Unix (LF)

If you will be writing a few shell scripts then it's worth creating a folder, perhaps called "scripts" and adding that to the system path:

$ mkdir -p $HOME/scripts
$ export PATH="$PATH:~/scripts"

Even better is to edit your .bash_profile file to include export PATH="$PATH:~/scripts" that will keep the "scripts" folder in your path every time you log in.

With the script saved in the folder, you can now run it with just:

$ my_shell_script.sh

Errors:

/bin/bash^M: bad interpreter: no such file or directory
This usually means the file has been edited and has Windows <CR-LF> instead of unix <LF> line endings.
