create database financial_data;

-- praposal_master 

create table proposal_master(
proposal_id int,
proposal_name varchar(30),
proposal_date date,
amount decimal(15,2),
proposal_status varchar(20),
interest_rate decimal(5,2),
duration_months int
);

INSERT INTO proposal_master (proposal_id, proposal_name, proposal_date, amount,
							proposal_status, interest_rate, duration_months)
VALUES
(101, 'Home Loan A', '2023-01-10', 500000.00, 'Pending', 4.50, 120),
(102, 'Business Loan B', '2023-02-15', 300000.00, 'Approved', 5.00, 60),
(103, 'Education Loan C', '2023-03-01', 100000.00, 'Rejected', 6.00, 48),
(104, 'Car Loan D', '2023-03-22', 20000.00, 'Pending', 3.50, 36),
(105, 'Startup Loan F', '2021-05-05', 500000.00, 'Pending', 5.50, 120),
(106, 'Home Renovation G', '2022-06-11', 150000.00, 'Approved', 3.80, 60),
(107, 'Small Business I', '2024-08-01', 250000.00, 'Pending', 5.30, 48),
(108, 'Personal Loan J', '2023-08-25', 40000.00, 'Approved', 3.90, 24),
(109, 'Agriculture Loan L', '2023-09-10', 800000.00, 'Rejected', 6.50, 120),
(110, 'Real Estate Plan M', '2023-09-23', 600000.00, 'Approved', 3.70, 240);

select * from proposal_master;

-- Loan_Master

CREATE TABLE loan_master (
    loan_id INT,  
    customer_id INT,                        
    loan_type VARCHAR(50),                  
    loan_amount DECIMAL(15,2),              
    interest_rate DECIMAL(5,2),            
    loan_start_date DATE,
    loan_end_date DATE,                    
    loan_status VARCHAR(20)        
    );
    -- FOREIGN KEY (customer_id) REFER customer_master(customer_id)  


INSERT INTO loan_master (loan_id, customer_id, loan_type, loan_amount, 
						interest_rate, loan_start_date, loan_end_date, loan_status)
VALUES
(101, 1, 'Home Loan', 500000.00, 4.50, '2023-01-10', '2033-01-10', 'Active'),
(102, 2, 'Business Loan', 300000.00, 5.00, '2023-02-15', '2028-02-15', 'Active'),
(103, 3, 'Education Loan', 100000.00, 6.00, '2023-03-01', '2027-03-01', 'Closed'),
(104, 4, 'Car Loan', 20000.00, 3.50, '2023-03-22', '2026-03-22', 'Active'),
(105, 5, 'Startup Loan', 500000.00, 5.50, '2023-05-05', '2030-05-05', 'Pending'),
(106, 6, 'Home Renovation Loan', 150000.00, 4.00, '2023-06-15', '2028-06-15', 'Active'),
(107, 7, 'Personal Loan', 40000.00, 3.75, '2023-07-01', '2025-07-01', 'Closed'),
(108, 8, 'Agriculture Loan', 800000.00, 5.20, '2023-08-10', '2033-08-10', 'Active'),
(109, 9, 'Real Estate Loan', 600000.00, 4.80, '2023-09-01', '2033-09-01', 'Pending'),
(110, 10, 'Small Business I', 250000.00, 5.10, '2023-09-20', '2028-09-20', 'Active');

select * from loan_master;


-- customer_master

create table customer_master (
    customer_id INT PRIMARY KEY ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    registration_date DATE
);


INSERT INTO customer_master (customer_id, first_name, last_name, date_of_birth,
							email, phone_number, address, registration_date)
VALUES
(1, 'John', 'Doe', '1985-06-15', 'john.doe@example.com', '9520659820', '123 Elm St, Springfield', '2023-01-01'),
(2, 'Jane', 'Smith', '1990-08-25', 'jane.smith@example.com', '9605024620', '456 Oak St, Springfield', '2023-01-15'),
(3, 'Alice', 'Johnson', '1978-12-10', 'alice.johnson@example.com', '9503546871', '789 Pine St, Springfield', '2023-02-01'),
(4, 'Bob', 'Brown', '1982-11-22', 'bob.brown@example.com', '7435985472', '321 Maple St, Springfield', '2023-02-10'),
(5, 'Carol', 'Davis', '1995-05-30', 'carol.davis@example.com', '9302457860', '654 Birch St, Springfield', '2023-03-01'),
(6, 'David', 'Wilson', '1988-07-18', 'david.wilson@example.com', '7823458791', '987 Cedar St, Springfield', '2023-03-15'),
(7, 'Eva', 'Martin', '1983-09-05', 'eva.martin@example.com', '7856458961', '135 Walnut St, Springfield', '2023-04-01'),
(8, 'Frank', 'Taylor', '1992-01-12', 'frank.taylor@example.com', '8565783545', '246 Fir St, Springfield', '2023-04-15'),
(9, 'Grace', 'Anderson', '1986-10-20', 'grace.anderson@example.com', '785612452', '357 Spruce St, Springfield', '2023-05-01'),
(10, 'Hank', 'Thomas', '1975-03-30', 'hank.thomas@example.com', '9832467845', '468 Pine St, Springfield', '2023-05-15');

select * from customer_master;					

-- product_master

CREATE TABLE product_master (
    product_id INT,  
    product_name VARCHAR(50),                  
    product_description TEXT,                  
    product_price DECIMAL(10,2)                 
);

INSERT INTO product_master (product_id, product_name, product_description, product_price)
VALUES
(101, 'Basic Loan', 'A standard loan with basic features.', 15000.00),
(102, 'Premium Loan', 'A loan with premium benefits and features.', 25000.00),
(103, 'Student Loan', 'A loan specifically for students.', 50000.00),
(104, 'Home Loan', 'A loan for purchasing or renovating a home.', 10000.00),
(105, 'Car Loan', 'A loan for buying a car.', 30000.00),
(106, 'Personal Loan', 'A loan for personal use.', 20000.00),
(107, 'Business Loan', 'A loan for business purposes.', 50000.00),
(108, 'Agricultural Loan', 'A loan for agricultural needs.', 40000.00),
(109, 'Real Estate Loan', 'A loan for real estate investments.', 80000.00),
(110, 'Small Business I', 'A loan for Small Business.', 15000.00);

select * from product_master;