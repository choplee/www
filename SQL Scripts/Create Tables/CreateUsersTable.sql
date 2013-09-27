CREATE TABLE Users
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
userName VARCHAR(25),
email VARCHAR(50),
dateCreated DATETIME,
passwordResetFlag TINYINT(1),
passwordHash CHAR(64),
passwordSalt CHAR(64),
inactive TINYINT(1)
);