CREATE TABLE Topics
(
id INT NOT NULL PRIMARY KEY,
subjectID INT,
topic VARCHAR(256),
creditToID INT,
clickThroughCount INT
);