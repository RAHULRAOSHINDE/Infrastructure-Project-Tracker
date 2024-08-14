
# Infrastructure-Project-Tracker

This project aims to automate the extraction, standardization, and storage of data related to construction and infrastructure projects and tenders in the state of California. Using Selenium WebDriver, the project extracts data from various websites. Python scripts are employed for parsing, cleaning, and standardizing the scraped data. The standardized data is then stored in a relational database with a Change Data Capture (CDC) mechanism that logs every new insertion for tracking purposes. Scheduled tasks are implemented using cron to automate data scraping, standardization, and updates at regular intervals. Additionally, Slack notifications are sent for new projects


## Tech Stack 

* Selenium WebDriver: Used for web scraping and automating browser interactions to extract data from websites.

* Python: Used for data parsing, cleaning, and standardization.

* MySQL: Used as a relational database to store the standardized data.

* Cron: Used to schedule the scraping, standardization, and updating processes.

* Slack API: Used to send notifications about new projects or tenders.

## Usage

* To setup the environment,execute this below command

```bash
./environment.sh
```
* To setup the database,execute this below command

```bash
./DB_setup.sh >> /root/Desktop/infra/db.logs 2>&1
```

* To schedule automated jobs ,alter days and times as required 

```bash

crontab -e

15 9 14 8 3 /root/Desktop/infra/run_infra_extraction.sh >> /root/Desktop/infra/infra.logs 2>&1
```

