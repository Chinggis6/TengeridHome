# Fish

Friendly interactive shell

As a modern replacement for Bash shell and Bash scripting.

http://fishshell.com/docs/current/commands.html#switch

## Variables
set var value

> variables can be array as is the $PATH, called lists

## Do math
math "2*3"

## Remove first ten characters
string sub --start 10 $var

## Command result
(pwd)

## Conditionals

if (true) > /dev/null #avoid command's output
	
else
	
end

while (true) > /dev/null
	// avoid infinite loops
end

## Switch

switch $animal
	case cat
		echo evil
	case wolf dog human moose dolphin whale
		echo mammal
	case '*'
		echo Default for all things absent in case statement
end

## Count lists

count $list

## Iterations

For loop

for dir in $PATH
	echo $dir
end

## Other

abbr

command

realpath

type #check command types (builtin, function, binary file etc)

vared - interactively edit environment variables, $PATH[3] can be passed to edit the THIRD element

funced - interactively edit (or create a new) function
-e specify editor (default $VISUAL then $EDITOR)
-i built-in editor

funcsave - save the function (as a .fish file in fish/functions directory)

## Directory history
of cd command

dirh
prevd
nextd
$dirprev
$dirnext

## Test

Check files for attributes

test

-e file exists
-d is directory
-f is regular file
-L is symbolic link
-O is owned by current user
-r is readable
-w is writable
-x is executable
-s is not empty (size is greater than zero)

## Read

is pipable with echo (echo hello | read var)

Read input into variable

read var
