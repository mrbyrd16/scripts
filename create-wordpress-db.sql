update user set authentication_string=PASSWORD("VMware!234") where User='root';
# Create Database
SELECT User, Host, authentication_string FROM mysql.user;
CREATE DATABASE wordpress;
CREATE USER wp_svc@localhost;
CREATE USER wp_svc@'%';
update user set authentication_string=password("VMware!234") where user='wp_svc@localhost';
GRANT ALL PRIVILEGES ON wordpress.* TO wp_svc@localhost IDENTIFIED BY 'VMware!234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wp_svc'@'%' IDENTIFIED BY 'VMware!234';
FLUSH PRIVILEGES;
exit;
