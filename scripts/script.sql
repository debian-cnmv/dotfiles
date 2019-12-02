CREATE DATABASE IF NOT EXISTS user1;
CREATE OR REPLACE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
GRANT ALL ON user1.* TO 'user1'@'localhost';

CREATE DATABASE IF NOT EXISTS user2;
CREATE OR REPLACE USER 'user2'@'localhost' IDENTIFIED BY 'password2';
GRANT ALL ON user2.* TO 'user2'@'localhost';

CREATE DATABASE IF NOT EXISTS user3;
CREATE OR REPLACE USER 'user3'@'localhost' IDENTIFIED BY 'password3';
GRANT ALL ON user3.* TO 'user3'@'localhost';

FLUSH PRIVILEGES;
