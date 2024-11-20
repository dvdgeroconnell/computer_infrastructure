# computer_infrastructure  
This is the GitHub repository for the assignment work associated with the Computer Infrastructure module.  
***  
  
| Topic | Details |
|---------|-------------|
| **Module:**  | 2425 - Computer Infrastructure  |
| **Lecturer:**  | Ian McLoughlin  | 
| **Course:**  | Diploma in Science in Computing (Data Analytics)  |
| **Year/Semester:**  | Year 1/Semester 2  |
| **Student Name:**  | David O'Connell  |
| **Student ID:**  | G00438912  |
| **Student Email:**  | G00438912@atu.ie  |  

## Purpose of this Repository   
This repository contains the files associated with the Computer Infrastructure coursework. More specifically, it contains Jupyter notebook and associated files for the coursework and assessment.  

## About this README  
This README has been based on the guidelines in [GitHub's documentation on READMEs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes).  
More information on writing in Markdown can be found [in Github's documentation](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax). 

## About This Project  
This repository contains the following:  

### weather.ipynb  
xx  

## weather.sh  
A bash script to download a file from the Irish Meteorological Service for the weather station provided as a command line argument for the date that the script is run. The file is named with the weather station and date of download.  

## Getting Started
1. Clone this repository
2. Run the code... to be completed

## Task 1
### Problem Statement
Using the command line, create a directory (that is, a folder) named data at the root of your repository. Inside data, create two subdirectories: timestamps and weather.  

### Commands (in Codespace)
@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) **$ mkdir data**   

@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) **$ mkdir data/timestamps**   

@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) $ **mkdir data/weather**     

### Notes
/data/weather was not pushed to Github repo, most likely because it is empty.

## Task 2
### Problem Statement
Navigate to the data/timestamps directory. Use the date command to output the current date and time, appending the output to a file named now.txt. Make sure to use the >> operator to append (not overwrite) the file. Repeat this step ten times, then use the more command to verify that now.txt has the expected content.   

### Commands (in Codespace)
*Change directory:*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) $ **cd data/timestamps**  

*To run once:*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ **date >> now.txt**  

*To run 10 times:*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ **for i in {1..10}**  
**> do**  
**> date >> now.txt**  
**> done**  

## Task 3
### Commands (in Codespace)
*List format options for date command*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ **man date**  
   
*Output date and time as YYYYmmdd_HHMMSS*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ **date +%Y%m%d_%H%M%S**  
Output: 20241017_192135  
  
*Output date and time as YYYYmmdd_HHMMSS to formatted.txt*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ **date +%Y%m%d_%H%M%S >> formatted.txt**  

### Notes  
The *'>> filename'* part of the command appends to an existing file or creates a new one if it doesn't already exist. Using *'>'* instead of *'>>'* appends to an existing file instead of replacing.

## Task 4  
### Commands (in Codespace)  
*Create an empty file with the name in the YYYYmmdd_HHMMSS.txt format*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ touch \`date +"%Y%m%d_%H%M%S.txt"\`  

### Notes  
The backtick has a special meaning. Everything contained between backticks is executed first, and the output of that execution is used by the main command.  

## Task 5  
### Commands (in Codespace)  
*Change to the /weather/data directory*   
@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) $ cd data/weather  

*...and download the latest weather data for the Athenry weather station from Met Eireann using wget, using the -O \<filename\> option to save the file as weather.json*
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/weather (main) $ wget -O "weather.json" https://prodapi.metweb.ie/observations/athenry/today    

### Notes  
The *'-O'* option writes the retrieved content to the filename following in double quotes.  

## Task 6  
### Commands (in Codespace)  
*Modify the command in Task 5 to save the downloaded file with a timestamped name in the format* YYYYmmdd_HHMMSS.json.  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/weather (main) $ wget -O \`date +"%Y%m%d_%H%M%S.json"\` https://prodapi.metweb.ie/observations/athenry/today

### Notes
The *'date'* command prints out the system date and time in the specified format. In this case, it is passed to the *'wget -O'* command as the filename.  

## Task 7
### Requirement
*Write a bash script called* weather.sh *in the root of the repository. This script should automate the process from Task 6, saving the weather data to the* data/weather *directory.*  
  
*Make the script executable...*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) $ chmod u+x weather.sh  

*... and run it.*   
@dvdgeroconnell ➜ /workspaces/computer_infrastructure (main) $ ls -l weather.sh  
-rwxrw-rw- 1 codespace codespace 467 Nov 20 17:23 weather.sh   



## References

1. https://www.cyberciti.biz/faq/bsd-appleosx-linux-bash-shell-run-command-n-times/  
   This was useful in figuring out how to run a shell command multiple times, as required in Task 2.

  
#### End