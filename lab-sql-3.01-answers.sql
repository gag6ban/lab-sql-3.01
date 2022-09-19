USE sakila; 

-- Activity 1
-- 1. Drop column picture from staff.
SELECT * from staff;
ALTER TABLE staff DROP COLUMN picture;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT * FROM customer;
SELECT * FROM staff;

INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update) 
VALUES
('3', 'Tammy', 'Sanders', '4', 'TAMMY.SANDERS@sakilastaff.com', '2','1', 'Tammy', Null, NOW()); 

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. 
-- For eg., you would notice that you need customer_id information as well. 

SELECT * FROM rental; -- got rental id

SELECT * FROM INVENTORY -- got inventory id (1,2,3,4 & i chose 2)
WHERE film_id = '1' and store_id = '1';

SELECT * FROM customer; -- got customer id;
SELECT * FROM staff; -- got staff_id;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES
('16050', NOW(), '2','130', NULL, '1', NOW()); 

SELECT * FROM rental


