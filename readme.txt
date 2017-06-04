groupadd - Used to add groups in the system

useradd - Used to add users
  -m Make home direcotry
  -d Specify the path for the home directory
  -G Specify all the primary groups the user will be a part of seperated by commas.
  
chgrp -used to change the group ownership of a file or path

chmod - used to change the mode of ownership of owner,group and other world for a file/path.

mkdir - used to make directories in the specified path

cd - used to change directories

< /dev/urandom tr -dc "[:alnum:]" | head -c10 > file.txt
  Creates a txt file with the name file in the path where the command is run.
  Head c-10  specifies the size of the file to be 10 bytes.
  [:alnum] specifies that the content of the file is alphabets and numbers.
  
  
  crontab is used to run a set of commands at a specific date or time or day of the week once or repeatedly.
  
  * * * * * shell file path name >/dev/null 2>&1
  
  First * is used to specify the minutes.
  Second * is used to specify the hour.
  Third * is used to specify the day of the month.
  First * is used to specify the month.
  Fifth * is used to specify the days of the week.
  
  Shell file path name specifies the path of the shell file to be run everytime.
  
  
  >/dev/null 2>&1 - Is specified to prevent the system from reporting every time the command is run
  
  
