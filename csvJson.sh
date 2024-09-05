#!/bin/bash
location=~/desktop/exercise

cd $location

#Create sample json and csv file
touch file.csv file1.csv file2.csv code.json code1.json code2.json


#Create a folder json_and_csv as the destination for  copying the different file format
mkdir json_and_csv
mv {*.csv,*.json} json_and_csv

#View the transferred files in the folder
cd $location/json_and_csv
ls -l

