#!/bin/bash

# https://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html

echo PS1 $PS1
echo PS2 $PS2
echo PS3 $PS3
echo PS4 $PS4


# \d : the date in “Weekday Month Date” format (e.g., “Tue May 26”)
# \H : the hostname
# \n : newline
# \t : the current time in 24-hour HH:MM:SS format
# \w : the current working directory, with $HOME abbreviated with a tilde
# \W : the basename of the current working directory, with $HOME abbreviated with a tilde
# \# : the command number of this command
PS1="\n\n------------------------------------------\n\d \t  \n\H \n \w \n------------------------------------------\n CMD#\# $"