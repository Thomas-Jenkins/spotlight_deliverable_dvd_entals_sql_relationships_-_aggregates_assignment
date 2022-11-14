-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
SELECT address_id from address
LEFT JOIN city ON city.city_id = address.city_id
WHERE city = 'Dundee'