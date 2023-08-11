-- migrate:up
CREATE TABLE authorities (
  id INT PRIMARY KEY
);

-- migrate:down
DROP TABLE authorities
