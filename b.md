# List all MySQL processes
ps aux | grep mysql

# processes related to MySQL and kill them using their process IDs (PID)
sudo kill -9 <PID>

# Login to MySQL without a password:
mysql -u root

# Login with the new password:
mysql -u root -p

# Or run the task with a superuser:
sudo -u postgres bin/rails db:fixtures:load

# Update the password for the root user
USE mysql;
UPDATE user SET authentication_string=PASSWORD('newpassword') WHERE User='root';
FLUSH PRIVILEGES;
EXIT;

# Restart MySQL:
sudo systemctl stop mysql
sudo systemctl start mysql

# Ensure the user has superuser privileges:
ALTER USER your_user_name WITH SUPERUSER;

# Stop the MySQL server
sudo systemctl stop mysql

# Start MySQL in safe mode to disable authentication temporarily
sudo mysqld_safe --skip-grant-tables &

# Create the necessary directory with the correct permissions
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld

# SQL command to display all users
SELECT User, Host FROM mysql.user;

# grant all privileges to the root user
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;

# verify that the root user has the necessary privileges
SHOW GRANTS FOR 'root'@'localhost';