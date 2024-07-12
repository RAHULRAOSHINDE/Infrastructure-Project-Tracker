
# Infrastructure-Project-Tracker

This project aims to automate the extraction, standardization, and storage of data related to construction and infrastructure projects and tenders in the state of California. Using Selenium WebDriver, the project extracts data from various websites. Python scripts are employed for parsing, cleaning, and standardizing the scraped data. The standardized data is then stored in a relational database with a Change Data Capture (CDC) mechanism that logs every new insertion for tracking purposes. Scheduled tasks are implemented using cron to automate data scraping, standardization, and updates at regular intervals. Additionally, Slack notifications are sent for new projects





## Technologies Used

#### Web Scrapping with Selenium : 
Selenium WebDriver is utilized for web scraping for its capability to interact with dynamic web elements which ensures data extraction from the websites

#### Pandas for Data Handling:

Pandas is used for data manipulation and cleanup.It provides efficient functions for working with structured data and which it suitable for processing the scraped data and prepare it for storage 
## Installation

#### 1.Install Python and pip

JupyterLab requires Python and pip to be installed system in order to run properly.If you don't have it already installed ,then it can be done by running:

```bash
sudo apt install python3 python3-pip
```

#### 2.Install JupyterLab

Once Python and pip are installed,pip can be used to install JupyterLab.Run the following command:

```bash
pip3 install jupyterlab
```

#### 3.Launch JupyterLab

After the installation is completed,we can start JupyterLab by running the below command in terminal

```bash
jupyter lab 
```

## Methodologies

###  Research and Data Sourcing 

####  Research process:

    • Conducted research to identify data sources related to construction and infrastructure projects and tenders in California.
    • Compiled a list of data sources based on the research findings.
    • Verified the trustworthiness of the data sources to filter out unreliable sources.
    • Prioritized data sources with accurate and up-to-date information.

###  Data Extraction and Standardization

#### Approach to Build Data Products

#### Data Scraping

    • The data was scraped using Selenium and Python, where Selenium was utilized to navigate web pages and and Python scripts were used to extract the information from sources
   
#### Standardization of Scraped Data

    • After the data is scraped,it needs to be standardized .This involved steps such as 
    • Parsing and cleaning the scraped data to ensure consistency and accuracy
    • Handling missing values and formatting dates
    • Mapping scraped data fields to corresponding fields 
    • Converting it into a structured format

#### Automating Data Extraction

    • By desgining  a automated workflow using cron jobs to periodically scrape data from multiple sources ,perform standardization processes and update data products



###  Automation and Continuous Updating

#### Continuous Data Updates

    • By scheduling scraping jobs using cron jobs,such that these jobs runs at a predefined time to start the scraping of data 
    • To fetch the new or modified data by comparing the timestamps and when the changes are detected trigger the scraping jobs to fetch the modified data
    • Implementing error handling mechanisms to handle issues such as network errors,timeouts and to automatically retry the failed scraping jobs.Set up alerting mechanisms to notify incase of failures during scraping process
    • By maintaining a proper version of scraped data helps to rollback to previous versions incase of data corruptions or errors 

#### Use of Cron Jobs

    • Cron jobs can be utilized to orchestrate the execution of scraping and standardization of scripts at predefined intervals
    • It triggers the execution of scraping process on a regular basis  depending on frequency of data updates required
    • Also it can used to schedule the execution of multiple scripts to maximize the resource utilization and reduce processing time


### Note
    
    * In cred.cnf , update user,localhost,password with appropriate credentials

    * In cred.env , update DB_USER,DB_PASSWORD,DB_LOCALHOST,SLACK_BOT_TOKEN with appropriate credentials

