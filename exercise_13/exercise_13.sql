-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT
  country.country,
  AVG(amount) as avg
from
  country
  LEFT JOIN city ON city.country_id = country.country_id
  LEFT JOIN address on address.city_id = city.city_id
  LEFT JOIN customer ON customer.address_id = address.address_id
  LEFT JOIN payment ON payment.customer_id = customer.customer_id
WHERE
  amount IS NOT NULL
GROUP BY
  country.country
ORDER BY
  avg DESC
LIMIT
  10