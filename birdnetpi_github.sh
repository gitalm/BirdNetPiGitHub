#!/bin/bash

#BirdDB  contains alls identified Birds
cp /home/pi/BirdNET-Pi/BirdDB.txt /home/pi/birdnetpi_github/BirdDB.csv
sed -i 's/\;/\,/g' /home/pi/birdnetpi_github/BirdDB.csv
cp /home/pi/BirdNET-Pi/IdentifiedSoFar.txt /home/pi/birdnetpi_github/
echo "Textfiles copied"

#Copy Audio-Files
cp -aru  /home/pi/BirdSongs/Extracted/By_Common_Name/* /home/pi/birdnetpi_github/By_Common_Name
echo "all transfered"

#Commit to the internet
cd /home/pi/birdnetpi_github/ 
git add --all
git commit  -am "BirdNET-PI Solar"
git push -u origin master
