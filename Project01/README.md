# CS 1XA3 Project01 README - hov19
## Usage
Execute this script from the project root with:
	chmod +x CS1XA3/Project01/project_analyze.sh
	./CS1XA3/Project01/project_analyze.sh F1 F2 F3 F4
With possible arguments
	F1: Feature 01 
	F2: Feature 02 
	F3: Feature 03
	F4: Feature 04 
## Feature 01 (6.1 Script Input)
Description: this feature asks the user to input any integer, and the script will output the same integer
Execution: execute this feature by running ./project_analyze.sh F1 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F1 from the project root
Reference: some code was taken from [Bash Beginner Guide](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html) to learn how to create user input
## Feature 02 (6.2 FIXME Log)
Description: this feature finds every file in the repo where the file name ends with '#FIXME', and will concatenate that file name into a new file named fixme.log
Execution: execute this feature by running ./project_analyze.sh F2 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F2 from the project root
Reference: some code was taken from [Remove path from find output](https://serverfault.com/questions/354403/remove-path-from-find-command-output) to learn how to output file name without adding path
## Feature 03 (6.5 File Type Count)
Description: this feature asks the user to input a file extension, then finds and outputs the number of files in the repo that contain the given extension name
Execution: execute this feature by running ./project_analyze.sh F3 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F3 from the project root
Reference: some code was taken from [Curtis' Week05 Lab Week Slides](https://mac1xa3.ca/Slides/Week05/1XA3_Lab_Week05.html) for piping
## Feature 04 (6.6 Find Tag)
Description: this feature asks the user to input a tag, and the feature will find all the lines in any *.py file in the repo containing the tag as well as begins with "#", and will concatenate that line into a new file named Tag.log
Execution: execute this feature by running ./project_analyze.sh F4 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F4 from the project root
Reference: some code was taken from [Curtis' Week05 Lab Week Slides](https://mac1xa3.ca/Slides/Week05/1XA3_Lab_Week05.html) for piping into while
## Feature 05 (6.3 Checkout Latest Merge)
Description: this feature uses the grep function to search through all the commit messages made that include "merge", and will automatically checkout the most recent commit that includes "merge" in the message.
Execution: execute this feature by running ./project_analyze.sh F5 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F5 from the project root
Reference: some code was taken from [How to grep git commits](https://stackoverflow.com/questions/1337320/how-to-grep-git-commit-diffs-or-contents-for-a-certain-word) to learn how to use grep for looking through commit messages
	   some code was taken from [Get first line of output](https://stackoverflow.com/questions/46021955/get-first-line-of-a-shell-commands-output) to use only the first line of what grep outputs (most recent commit) 
## Feature 06 (6.8 Backup and Delete / Restore)
Description: this feature prompts the user to input either "Backup" or "restore", and uses the input to run different functions. "Backup" moves all the files with the extenstion *.tmp into a directory called backup, and removes the file from the original location. The feature will also input the file path of all the moved files into a log file inside the backup directory. The "Restore" function will move all the files in the backup directory back into their original locations. The function will be able to move the files back from reading the original file location noted in the log. If there is a file path in the log, but the actual file is not within the backup directory, then the function will output an error message.
Execution: execute this feature by running ./project_analyze.sh F6 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F6 from the project root
Reference: some code was taken from [Split string and get last field](https://stackoverflow.com/questions/3162385/how-to-split-a-string-in-shell-and-get-the-last-field) to learn how to extract just the file name from a file path
	   some code was taken from [Using lines of file as arguments](https://stackoverflow.com/questions/4227994/how-do-i-use-the-lines-of-a-file-as-arguments-of-a-command) to be able to use each line from the log file as an argument in the for loop
	   some code was taken from [Using dirname](https://askubuntu.com/questions/1010310/cutting-all-the-characters-after-the-last) to get the file path without including the actual file name
## Feature 07 (6.4 File Size List)
Description: this feature runs the ls command, but instead of just outputting all the files and directories, it will only output the files, and list all the information along with them such as file size or permissions. This feature will output all the files, ordered from largest to smallest file size, as well as output the sizes in a human readable format.
Execution: execute this feature by running ./project_analyze.sh F7 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F7 from the project root
Reference: some code was taken from [Sorting 'ls' by file sizes](https://alvinalexander.com/photos/linux-ls-command-how-sort-by-filesize-reversed) to be able to list all the files and directories in order of size
	   some code was taken from [Make 'ls' only display files](https://askubuntu.com/questions/811210/how-can-i-make-ls-only-display-files) to display only files (not directories) when the code is run
## Custom Features
### Custom Feature 01 (Repeated Input)
Description: this feature will take 2 user inputs. The first input will be the word that the user wants repeated, and the length of the second input will be the number of times that the first input is repeated. The feature will write the first input in a file named Repeat.log, repeating the first input as many times as the length of the second input. **NOTE: the feature will not include trailing whitespace as characters in the second input (i.e. "hello__" will have length 5, not 7)**
Execution: execute this feature by running ./project_analyze.sh F8 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F8 from the project root
Reference: some code was taken from [Iterate over variable in bash](https://www.cyberciti.biz/faq/unix-linux-iterate-over-a-variable-range-of-numbers-in-bash/) to create for loop in a range
### Custom Feature 02 (Even or Odd)
Description: this feature will prompt the user to input an integer, and will check to see if it is an odd or even number. It will then sort the number into one of two new files named even.log and odd.log accordingly. The feature checks to see if it is even or odd by using the mod operation.
Execution: execute this feature by running ./project_analyze.sh F9 from inside the Project01 directory or ./CS1XA3/Project01/project_analyze.sh F9 from the project root
Reference: some code was taken from [Modulus in bash](https://stackoverflow.com/questions/39136959/modulus-function-in-bash-shell-script) for syntax on using 'mod'
#### Extra References
Links for code that was used throughout the script
code was taken from [Iterating Arguments in Bash](https://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script) to learn how to iterate through different features/arguments
code was taken from [Functions in Bash](https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php) to learn how to create and call functions
code was taken from [Extracting substrings](https://stackoverflow.com/questions/428109/extract-substring-in-bash) to learn how to use cut
code was taken from [Substrings in bash](https://stackabuse.com/substrings-in-bash/) for extra help on using cut
