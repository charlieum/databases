DROP DATABASE chat;
CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  id INT NOT NULL AUTO_INCREMENT,
  userid INT NOT NULL,
  message VARCHAR(200) NOT NULL,
  roomname VARCHAR(20),
  PRIMARY KEY (ID)
);

CREATE TABLE users (
  id  INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
)


-- DROP DATABASE chat;
-- CREATE DATABASE chat;

-- USE chat;

-- -- CREATE TABLE rooms (
-- --   id INT AUTO_INCREMENT,
-- --   name CHAR(10),
-- --   PRIMARY KEY (id)
-- -- );

-- CREATE TABLE users (
--   id INT AUTO_INCREMENT,
--   username CHAR(15),
--   PRIMARY KEY (id)
-- );

-- CREATE TABLE messages (
--   id INT AUTO_INCREMENT,
--   user INT,
--   username CHAR(15),
--   message VARCHAR(255),
--   roomname VARCHAR(15),
--   PRIMARY KEY (id),
--   FOREIGN KEY (user) REFERENCES users(id)
-- );



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
