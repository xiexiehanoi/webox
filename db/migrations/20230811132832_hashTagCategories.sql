-- migrate:up
CREATE TABLE hashTagCategories (
  id INT PRIMARY KEY
);

-- migrate:down
DROP TABLE hashTagCategories
