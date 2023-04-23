CREATE TABLE employees (
   id SERIAL PRIMARY KEY,
   first_name VARCHAR(255) NOT NULL,
   last_name VARCHAR(255) NOT NULL,
   email VARCHAR(255) UNIQUE,
   salary NUMERIC(10,2),
   department_id INT REFERENCES departments(id)
);