DROP TABLE IF EXISTS bookings;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS gym_classes;

CREATE TABLE members (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE gym_classes (
  id SERIAL PRIMARY KEY,
  gym_class_type VARCHAR(255) NOT NULL,
  class_time VARCHAR(255) NOT NULL
);

CREATE TABLE bookings (
  id SERIAL PRIMARY KEY,
  member_id INT REFERENCES members(id) ON DELETE CASCADE,
  gym_class_id INT REFERENCES gym_classes(id) ON DELETE CASCADE
);
