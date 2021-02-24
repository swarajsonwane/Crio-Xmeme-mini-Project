sudo apt-get install  mysql-client
sudo apt-get install  mysql-server
echo "Mysql Server installed"
sudo mysql -u root
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
sudo mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;"
sudo mysql -u root -proot -e "FLUSH PRIVILEGES;"
# Make our changes take effect
sudo service mysql stop
sudo service mysql start
# Any subsequent tries to run queries this way will get access 
sudo mysql -u root -proot -e "CREATE DATABASE xmeme;"
sudo mysql -uroot -proot -e "use xmeme;"
sudo mysql -u root -proot -e"GRANT ALL ON xmeme.* TO 'root'@'localhost';"
mysql -u root -proot -e "FLUSH PRIVILEGES;"
sudo service mysql stop
sudo service mysql start