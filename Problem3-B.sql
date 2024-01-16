INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('456 Oak St', 'West', 1, '67890', '555-5678');

UPDATE customer
SET address_id = LASTVAL()
WHERE last_name = 'Smith';
