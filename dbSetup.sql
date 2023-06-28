CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';




CREATE TABLE houses(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(255) NOT NULL,
  floors INT DEFAULT 1,
  rooms INT DEFAULT 1,
  bathrooms INT DEFAULT 1,
  price INT DEFAULT 100000,

  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
) default charset utf8 COMMENT '';

INSERT INTO houses
(description, floors, rooms, bathrooms, price)
VALUES
("It's a house", 2, 6, 3, 100000);

INSERT INTO houses
(description, floors, rooms, bathrooms, price)
VALUES
("It's another house", 10, 100, 1, 15000);

INSERT INTO houses
(description, floors, rooms, bathrooms, price)
VALUES
("Yet another House", 100, 60, 15, 999999);

SELECT * FROM houses WHERE id = LAST_INSERT_ID();
SELECT * FROM houses ORDER BY `createdAt` DESC;
SELECT * FROM houses WHERE id = 100;

