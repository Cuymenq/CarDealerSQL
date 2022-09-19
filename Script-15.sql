INSERT INTO dealership (dealership_id, address, inventory_id)
VALUES 
(1, '566 main st', 1)

INSERT INTO mechanic (first_name, last_name)
VALUES 
	('James', 'Hetfield'),
	('Lars', 'Ulrich')
	
	
INSERT INTO salesperson  (first_name, last_name, dealership_id)
VALUES 
('Lucas', 'Lang', 1),
('Chris', 'Thrutchley', 1)

INSERT INTO car (model_name, color, price, mechanic_id, inventory_id)
VALUES 
('Subaru Outback', 'Red', '35,686', 1, 1),
('Chevrolet Silverado', 'Black', '46,104', 1, 1),
('Honda Civic', 'Gray', '22,500', 2, 1),
('Toyota Corolla', 'Black', '20,425', 2, 1),
('Honda CR-V', 'Green', '26,000', 1, 1),
('Honda Accord', 'White', '26,520', 2, 1),
('Nissan Rogue', 'Orange', '27,360', 1, 1)


INSERT INTO customer (first_name, last_name, phone_number, billing_info, car_id)
VALUES 
('Customer', 'One', '(800)555-5555', 'blahblahblah', 1),
('John', 'Smith', '(800)555-5556', '123 Normal st', 4)

CREATE OR REPLACE PROCEDURE addCar(
	_name varchar(255),
	_color varchar(255),
	_price money,
	_mechanic_id int4,
	_inventory_id int4 
)
LANGUAGE plpgsql AS $$
begin
	insert into car (model_name, color, price, mechanic_id, inventory_id) 
	values
		(_model_name, _color, _price, _mechanic_id, _inventory_id);
end;
$$

CALL addCar ('Acura Integra'::varchar(255), 'gray'::varchar(255), 30,800::money, 2::int4, 22::int4); 

call addCar ('Honda HR-V', ' black', 23,650, 2, 23);
