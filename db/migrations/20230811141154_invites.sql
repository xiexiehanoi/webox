-- migrate:up
CREATE TABLE invites (
  id INT PRIMARY KEY,
  email VARCHAR(300) NOT NULL,
  authorityId INT NOT NULL,
  FOREIGN KEY (authorityId) REFERENCES authorities(id)
);

-- migrate:down
DROP TABLE invites
