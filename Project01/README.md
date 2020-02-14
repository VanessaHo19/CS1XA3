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
## Custom Features
### Custom Feature 01 (Repeated Input)
Description: this feature will take 2 user inputs. The feature will overwrite the first input in a file named Repeat.log, repeating the first input as many times as the length of the second input
### Custom Feature 02 (Even or Odd)
Description: this feature will prompt the user to input an integer, and will check to see if it is an odd or even number. It will then sort the number into one of two new files named even.log and odd.log accordingly.
#### Extra References
Links for code that was used throughout the script
code was taken from [Iterating Arguments in Bash](https://stackoverflow.com/questions/255898/how-to-iterate-over-arguments-in-a-bash-script) to learn how to iterate through different features/arguments
code was taken from [Functions in Bash](https://ryanstutorials.net/bash-scripting-tutorial/bash-functions.php) to learn how to create and call functions
