-- migrate:up
CREATE TABLE folders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  userId INT NOT NULL,
  folderName VARCHAR(500) NOT NULL,
  leftValue INT NOT NULL,
  rightValue INT NOT NULL,
  currentDatasize DECIMAL(10,2) NOT NULL,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (userId) REFERENCES users(id)
);

-- migrate:down
DROP TABLE folders
