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

