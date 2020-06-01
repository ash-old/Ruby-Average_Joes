DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS gym_classes;

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE gym_classes (
  id SERIAL PRIMARY KEY,
  gym_class_type VARCHAR(255),
  class_time VARCHAR(255)
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  members_id INT REFERENCES members(id),
  gym_classes INT REFERENCES gym_classes(id)
);
