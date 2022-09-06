CREATE TABLE users(
   id INT NOT NULL AUTO_INCREMENT,
   username VARCHAR(20) NOT NULL,
   password VARCHAR(15) NOT NULL,
   email VARCHAR(20) NOT NULL,
   PRIMARY KEY(id)
);
CREATE TABLE complaints(
   id INT NOT NULL AUTO_INCREMENT,
   complaint VARCHAR(100) NOT NULL,
   PRIMARY KEY(id)
   userid INT(10),
   FOREIGN KEY(userid) REFERENCES users(id)
);
