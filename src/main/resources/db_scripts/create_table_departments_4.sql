CREATE TABLE departments (
id SERIAL PRIMARY KEY,
department_name VARCHAR(255) UNIQUE NOT NULL,
location VARCHAR(255),
budget NUMERIC(10,2),
phone CHAR(11) UNIQUE
);