-- migrate:up
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  googleId VARCHAR(300) NOT NULL,
  username VARCHAR(200) NOT NULL,
  email VARCHAR(500) NOT NULL,
  authorityId INT NULL,
  totalUsableDataSize DECIMAL(10,2) NOT NULL,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  FOREIGN KEY (authorityId) REFERENCES authorities(id)
);

-- migrate:down
DROP TABLE users
