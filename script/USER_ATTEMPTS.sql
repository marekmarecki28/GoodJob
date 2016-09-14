CREATE TABLE user_attempts (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  attempts varchar(45) NOT NULL,
  lastModified datetime,
  PRIMARY KEY (id)
);