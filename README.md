# README - computer_infrastructure  
This is the GitHub repository for the assignments associated with the Computer Infrastructure module.  
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

## About This Repository  
This repository contains the following files and folders:  

### .gitignore
A GitHub-generated template which may be customized with extra files (names or types) and folders that GitHub should exclude from the repository.  

### requirements.txt
A list of packages required by the Python install for the Jupyter notebook, script or program to run. This file does not include the packages that are part of the standard Anaconda install. To install the packages in *requirements.txt*, use the following command:  
```  
pip install -r requirements.txt
```  
### weather.ipynb  
A Jupyter notebook containing the responses to the module assessment, including an analysis of a sample dataset for a chosen weather station downloaded from Met Éireann.  
[Jupyter Notebook](https://jupyter.org/) is a web-based interactive environment used to create notebook documents that can contain live code, equations, visualizations, media and other computational outputs. Jupyter notebooks are often used by programmers and data scientists to document, experiment, document and demonstrate code-based workflows.

### weather.sh  
A bash script to download a file from the Irish Meteorological Service for the weather station provided as a command line argument for the date that the script is run. The file is named with the weather station and date of download.  
The weather station may be any of those listed by Met Éireann [here](https://www.met.ie/climate/weather-observing-stations).  
The script is run by typing the following command:  
```
./weather.sh <weather station>
```  
Any station name containing a white space should be contained in single (or double) quotes, for example:
```
./weather.sh 'Sherkin Island'
```  

The white space is replaced with '_' in the name of the created file.  

### weather_original.sh
This is the original version of *weather.sh*, it does not support station names containing a white space.  

### subdirectories
The following subdirectories are included.  
#### ./data
Contains the /timestamps and /weather subdirectories.  
#### ./data/weather
Contains the files with json formatted data downloaded from Met Éireann.  
#### .data/timestamps
Contains files created as a result of using timestamps, either in the filename or in the body of the file.   
#### .github/workflows
Contains the yaml workflows which are executed by GitHub Actions.

### workflows  
These files are contained in the .github/workflows subdirectory.   
#### checks.yml  
This yaml file contains a workflow called "GitHub Actions Demo" which in turns contains a number of commands which run on `git push` and provide status information.    
#### check_sw.yml  
This yaml file contains a workflow called "Check Software" which prints out the version information for a number of bash commands, including `date`, `wget` and `curl`. It needs to be explicitly run from the GitHub Actions tab.  
#### test_cron.yml  
This file was created to test the `cron` command.  
#### weather-data.yml
This yaml file retrieves the weather data for a hardcoded station (Athenry) each day at 6:00am. It is run as a workflow by GitHub Actions on a scheduled basis. The weather data is saved in a time and date stamped file to the repository in /data/weather. It also includes a workflow_dispatch event so it can be tested manually.  

## Final Project
The purpose of the Final Project is to automate the *weather.sh* script to run daily and push the new data to the repository. This involved:  
  
- Creating a GitHub Actions workflow. This workflow is defined in the *weather-data.yml* file contained in the .github/workflows directory.  
- Use the `schedule` event with `cron` to run the script daily at 6am. It was originally set for 10am, but was subsequently changed to avoid all projects hitting the Met Éireann API at the same time. The file also includes a `workflow_dispatch` event.  
- The file also specifies that a Ubuntu virtual machine (`ubuntu-latest`) should be used to run the workflow. It clones the repository, executes the *weather.sh* script, then commits and pushes the changes back to the repository.
-  
<p>
<!-- <div style="text-align: center" font=10 weight=bold> Galway Wind Park </div> -->
<div style="text-align: center;">
    <img src="img/Galway-Wind-Park.jpg" width="50%">
</div>
<div style="text-align: center" font = 7> Log example </div> 
</p>

## Getting Started  
Note that this repository contains GitHub workflows.  
1. Clone this repository, either  
  a) to your local machine - [Visual Studio Code](https://code.visualstudio.com/download) and [Anaconda](https://www.anaconda.com/download) are pre-requisites.  
  b) using [GitHub Codespaces](https://github.com/features/codespaces) - click the green `Code` button at the top of the repository and select Codespaces.  
2. Review the README (this document).
3. Open the *weather.sh* notebook in Visual Studio Code.

## References

1. https://atlantictu-my.sharepoint.com/personal/ian_mcloughlin_atu_ie/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fian%5Fmcloughlin%5Fatu%5Fie%2FDocuments%2Fstudent%5Fshares%2Fcomputer%5Finfrastructure&ga=1  
The Computer Infrastructure lectures were heavily referred to throughout this project.  

2. https://docs.github.com/en/actions/writing-workflows/workflow-syntax-for-github-actions  
GitHub's workflow documentation was used to get the workflow running.  

3. https://www.geeksforgeeks.org/  
This site provides very user-friendly explanations with examples for pandas, matplotlib and seaborn topics.  

4. https://www.cyberciti.biz/faq/bsd-appleosx-linux-bash-shell-run-command-n-times/  
This was useful in figuring out how to run a shell command multiple times, as required in Task 2.  

### End