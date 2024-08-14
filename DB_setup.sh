#!/bin/bash




#Defining paths to create database


infraDB="/root/Desktop/infra/table_creation/db_creation.sql"


#Defining paths for table creation 

sanrafael_table="/root/Desktop/infra/table_creation/sanrafael_source.sql"

fairfield_table="/root/Desktop/infra/table_creation/fairfield_source.sql"

elk_table="/root/Desktop/infra/table_creation/elk_source.sql"

arcata_table="/root/Desktop/infra/table_creation/arcata_source.sql"



#Defining paths to create cdc


sanrafael_cdc="/root/Desktop/infra/cdc/sanrafael_cdc.sql"

fairfield_cdc="/root/Desktop/infra/cdc/fairfield_cdc.sql"

elk_cdc="/root/Desktop/infra/cdc/elk_cdc.sql"

arcata_cdc="/root/Desktop/infra/cdc/arcata_cdc.sql"




#Defining paths to create trigger


sanrafael_trigger="/root/Desktop/infra/trigger/sanrafael_trigger.sql"

fairfield_trigger="/root/Desktop/infra/trigger/fairfield_trigger.sql"

elk_trigger="/root/Desktop/infra/trigger/elk_trigger.sql"

arcata_trigger="/root/Desktop/infra/trigger/arcata_trigger.sql"




#Running script to create database

run_script(){
	path="$1"
	mysql --defaults-extra-file=/root/Desktop/infra/cred.cnf < "$path"
	if [ $?  -ne 0 ]; then
		echo "Error in executing $path"
		exit 1
	fi 
}

#running scripts to create database

run_script  "$infraDB"

echo "Database created"

#Running scripts to create tables

run_script  "$sanrafael_table"

run_script  "$fairfield_table"

run_script   "$elk_table"

run_script   "$arcata_table"


echo "Tables created"

#Running scripts to create cdc

run_script   "$sanrafael_cdc"

run_script   "$fairfield_cdc"

run_script   "$elk_cdc"

run_script   "$arcata_cdc"


echo "CDC created"

#Running scripts to create trigger

run_script    "$sanrafael_trigger"

run_script   "$fairfield_trigger"

run_script   "$elk_trigger"

run_script   "$arcata_trigger"

echo "Triggers created"