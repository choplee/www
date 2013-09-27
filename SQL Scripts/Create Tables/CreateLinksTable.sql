CREATE TABLE Links2
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
url VARCHAR(512),
createdBy INT,
dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
description VARCHAR(100),
subjectID INT,
topicID INT,
upVotes INT,
downVotes INT,
brokenFlag TINYINT(1),
dateReportedBroken DATETIME,
reportedBrokerBy INT,
inactive TINYINT(1),
clickThroughCount INT
);