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
The *'>> filename'* part of the command appends to an existing file or creates a new one if it doesn't already exist.  

## Task 4  
### Commands (in Codespace)  

*Create an empty file with the name in the YYYYmmdd_HHMMSS.txt format*  
@dvdgeroconnell ➜ /workspaces/computer_infrastructure/data/timestamps (main) $ touch `date +"%Y%m%d_%H%M%S.txt"`


## References

1. https://www.cyberciti.biz/faq/bsd-appleosx-linux-bash-shell-run-command-n-times/  
   This was useful in figuring out how to run a shell command multiple times, as required in Task 2.

  
#### End