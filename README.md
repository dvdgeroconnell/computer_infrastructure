# README - computer_infrastructure  
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
This repository contains the files associated with the Computer Infrastructure coursework, specifically, the Jupyter notebook and associated files for the coursework and assessment.  
Link to repository - [Computer Infrastructure](https://github.com/dvdgeroconnell/computer_infrastructure.git).

## About this README  
This README has been based on the guidelines in [GitHub's documentation on READMEs](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes).  
More information on writing in Markdown can be found in [Github's documentation](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax). 

## About This Project  
This repository contains the following:  

### .gitignore

### requirements.txt

### weather.ipynb  
A Jupyter notebook containing the responses to the module assessment.
It includes an analysis of a sample dataset for a chosen weather station downloaded from Met Éireann.

### weather.sh  
A bash script to download a file from the Irish Meteorological Service for the weather station provided as a command line argument for the date that the script is run. The file is named with the weather station and date of download.  
The weather station may be any of those listed by Met Éireann [here](https://www.met.ie/climate/weather-observing-stations).  
TThe script is run by typing **./ weather.sh \<weather station\>**.  
Any station name containing a white space should be contained in single quotes, for example **./weather.sh 'Sherkin Island'**.  
The white space is replaced with '_' in the file name.  

### subdirectories
The following subdirectories are included.  
#### ./data
Contains the /timestamps and /weather subdirectories.  
#### ./data/weather
Contains the files with json formatted data downloaded from Met Éireann.  
#### data/timestamps
Contains files created as a result of using timestamps, either in the filename or in the body of the file.   

## Getting Started
1. Clone this repository.
2. Review the README.
3. Review the *weather.sh* notebook.

## References

1. https://www.cyberciti.biz/faq/bsd-appleosx-linux-bash-shell-run-command-n-times/  
   This was useful in figuring out how to run a shell command multiple times, as required in Task 2.

  
### End