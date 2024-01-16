INSERT INTO address (address, district, city_id, postal_code, phone)
VALUES ('123 Main St', 'Central', 1, '12345', '555-1234');

INSERT INTO customer (store_id, first_name, last_name, email, address_id)
VALUES
    (1, 'John', 'Smith', 'john.smith@example.com', LASTVAL()),
    (1, 'Jane', 'Smith', 'jane.smith@example.com', LASTVAL()),
    (1, 'Jim', 'Smith', 'jim.smith@example.com', LASTVAL());

SELECT customer_id, store_id, first_name, last_name, email, address_id
FROM customer
WHERE last_name = 'Smith';