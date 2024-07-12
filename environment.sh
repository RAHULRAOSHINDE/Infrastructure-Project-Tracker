



#!/bin/bash

sudo root

chmod 644 /usr/lib/sudo/sudoers.so

chown -R root /usr/lib/sudo

pkexec su

sudo apt update

sudo apt install python3 python3-pip

pip3 install jupyterlab

jupyter lab 

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

sudo apt-get install apt-transport-https

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update

sudo apt-get install sublime-text


pip install --upgrade six ipython

pip uninstall six

pip install six

pip install pandas
 
pip install numpy

sudo apt-get update

sudo apt-get install cron

sudo systemctl enable cron

sudo systemctl start cron

sudo service cron start

sudo update-rc.d cron defaults

 sudo service cron status

sudo apt-get update

sudo apt-get install mysql-server

sudo service mysql start

#sudo mysql -u root
#exit from terminal 
#mysql -u root -p -A


GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'your_password' WITH GRANT OPTION;
FLUSH PRIVILEGES;


ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'your_password';
FLUSH PRIVILEGES;







