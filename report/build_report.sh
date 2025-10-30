#!/bin/bash

# Check that Zoom directory is present
if [ ! -d "./Zoom" ]; then
  echo "Error: Zoom directory not found!"
  exit 1
fi

# Check if quarto is installed
if ! command -v quarto &> /dev/null
then
    echo "Quarto could not be found, please install it to proceed."
    exit
fi

# Render the Quarto report
quarto render crress-outcomes-report.qmd 

# if successful, tar it up 
if [ $? -eq 0 ]; then
  tar czvf ../crress-outcomes-report.tgz _html
  echo "Report successfully rendered and archived as crress-outcomes-report.tgz"
else
  echo "Error: Quarto rendering failed."
  exit 1
fi