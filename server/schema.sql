CREATE DATABASE chat;

USE chat;

-- CREATE TABLE rooms (
--   id INT AUTO_INCREMENT,
--   name CHAR(10),
--   PRIMARY KEY (id)
-- );

CREATE TABLE users (
  id INT AUTO_INCREMENT,
  name CHAR(15),
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  id INT AUTO_INCREMENT,
  user INT,
  message VARCHAR(255),
  -- room INT,
  PRIMARY KEY (id),
  FOREIGN KEY (user) REFERENCES users(id)
);


-- CREATE TABLE friendships (
--   user1 INT,
--   user2 INT,
--   FOREIGN KEY (user1) REFERENCES users(id),
--   FOREIGN KEY (user2) REFERENCES users(id)
-- )

-- ALTER TABLE messages ADD FOREIGN KEY (room) REFERENCES rooms(id);
-- ALTER TABLE messages ADD FOREIGN KEY (user) REFERENCES users(id);
-- ALTER TABLE rooms ADD FOREIGN KEY (id) REFERENCES messages(room);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
