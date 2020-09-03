#!/bin/bash

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add --all .


# It will print the output of the command "date"
output=$(date +%F_%T)

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input $output"


# This will print the date and the hour that this project was uploaded to github
#git commit -m "Vicyos-Nord Rolling Update: ($output)"

# Push the local files to github

#git push -u origin vicyos
git push -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"






