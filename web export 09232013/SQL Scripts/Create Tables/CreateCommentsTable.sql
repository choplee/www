CREATE TABLE Comments
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
urlID INT,
commentText VARCHAR(512),
createdBy INT,
dateCreated DATETIME,
inappropriateFlag TINYINT(1),
reportedBy INT,
upVotes INT,
downVotes INT,
inactive TINYINT(1)
);