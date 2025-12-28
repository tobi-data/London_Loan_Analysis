_ _ Create tables
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100),
    city VARCHAR(50),
    employment_status VARCHAR(50)
);

CREATE TABLE loans (
    loan_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    loan_amount NUMERIC(10,2),
    amount_repaid NUMERIC(10,2),
    loan_status VARCHAR(20),
    loan_date DATE
);

_ _ Insert data into customers
INSERT INTO customers (full_name, city, employment_status) VALUES
('James Carter', 'London', 'Employed'),
('Aisha Khan', 'Birmingham', 'Self-Employed'),
('Daniel Okoye', 'Manchester', 'Employed'),
('Emily Roberts', 'Leeds', 'Unemployed'),
('Michael Thompson', 'Liverpool', 'Employed'),
('Fatima Bello', 'London', 'Self-Employed');

_ _ Insert data into loans
INSERT INTO loans (customer_id, loan_amount, amount_repaid, loan_status, loan_date) VALUES
(1, 5000, 3000, 'Active', '2024-01-10'),
(2, 3000, 3000, 'Closed', '2023-11-05'),
(3, 7000, 2000, 'Active', '2024-02-01'),
(4, 2000, 500, 'Defaulted', '2023-09-20'),
(5, 6000, 6000, 'Closed', '2023-12-15'),
(6, 4000, 1000, 'Active', '2024-01-25'),
(1, 2500, 0, 'Active', '2024-02-10'),
(3, 3500, 3500, 'Closed', '2023-10-08');

