#!/bin/bash

#to execute this script,run this below cron command and alter it based on the frequency that the script has to be executed at intervals

15 14 10 7 * /root/Desktop/infra/run_infra_extraction.sh >> /root/Desktop/infra/infra.logs 2>&1
 

/usr/local/bin/jupyter nbconvert --execute --to notebook /root/Desktop/infra/Infra_Data_Scraper.ipynb

echo "Data extraction,standardization and insertion into database completed successfully"