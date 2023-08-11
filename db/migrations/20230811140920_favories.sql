-- migrate:up
CREATE TABLE favorites (
  id INT AUTO_INCREMENT PRIMARY KEY,
  userId INT NOT NULL,
  fileId INT NOT NULL,
  UNIQUE KEY unique_favorite (userId, fileId),
  FOREIGN KEY (userId) REFERENCES users(id),
  FOREIGN KEY (fileId) REFERENCES files(id)
);

-- migrate:down
DROP TABLE favorites
