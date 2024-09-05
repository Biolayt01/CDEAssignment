#!/bin/bash
# Declaration of Evironmental Variables
export csv_url=https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2023-financial-year-provisional/Download-data/annual-enterprise-survey-2023-financial-year-provisional.csv
filename=annual-enterprise-survey-2023-financial-year-provisional.csv
exer_path=C:/Users/USER/desktop/exercise
rawpath=C:/Users/USER/desktop/exercise/raw
echo "Extracting data from" $csv_url

#Extract the data from the url link above using the wget command
#wget $csv_url

#This is to indicate that the extraction has been completed
echo "Extraction completed"

#I want to view the head records including the field names using the head command
echo "Viewing the top records from the dataset"
head annual-enterprise-survey-2023-financial-year-provisional.csv

#Create a folder raw inside the assignment directory
cd $exer_path
mkdir -p raw

#Save the downloaded dataset into the newly created raw folder

mv $filename $rawpath

cd $rawpath
#Checking the content of the raw folder

ls -l





#Tranformation
echo  "Data transformation section"

#Rename the column Variable_name to variable_name
sed '1s/Variable_name/variable_name/' $filename

#Selecting specific colums from the dataset

cut -d ',' -f 1,9,5,6 $rawpath/$filename > 2023_year_finance.csv

#Checking a few records to confirm the selected data
echo  "Loading the top records of the selected columns"

cd $rawpath
head 2023_year_finance.csv



#Loading the data into GOld folder

cd ..
mkdir Gold

echo "Preparing to load dataset into Gold folder"
mv $rawpath/2023_year_finance.csv $exer_path/Gold

cd $exer_path/Gold
ls
echo "Data has been loaded successfully"
