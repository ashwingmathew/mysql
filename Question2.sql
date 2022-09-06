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
   PRIMARY KEY(id),
   userid INT(10),
   FOREIGN KEY(userid) REFERENCES users(id)
);
CREATE TABLE resolve(
   id INT NOT NULL AUTO_INCREMENT,
   stage VARCHAR(10) NOT NULL,
   PRIMARY KEY(id),
   employee INT(10),
   FOREIGN KEY(employee) REFERENCES complaints(userid)
);
CREATE TABLE agents(
   id INT NOT NULL AUTO_INCREMENT,
   username VARCHAR(20) NOT NULL,
   password VARCHAR(15) NOT NULL,
   PRIMARY KEY(id)
);
CREATE TABLE assign(
   id INT NOT NULL AUTO_INCREMENT,
   PRIMARY KEY(id),
   complaintaction VARCHAR(10),
   FOREIGN KEY(assign) REFERENCES complaints(userid)
);
