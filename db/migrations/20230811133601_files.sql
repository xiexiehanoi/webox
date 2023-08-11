-- migrate:up
CREATE TABLE files (
  id INT AUTO_INCREMENT PRIMARY KEY,
  folderId INT NOT NULL,
  fileName VARCHAR(255) NOT NULL,
  hashTagId INT NULL,
  originalFileName VARCHAR(255) NOT NULL,
  mimetype VARCHAR(100) NOT NULL,
  size DECIMAL(10,2) NOT NULL,
  path VARCHAR(255) NOT NULL,
  uploadedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (folderId) REFERENCES folders(id),
  FOREIGN KEY (hashTagId) REFERENCES hashTagCategories(id)
);

-- migrate:down
DROP TABLE files

