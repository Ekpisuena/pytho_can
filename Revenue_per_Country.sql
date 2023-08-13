SELECT co.country, SUM(p.amount) AS Revenue
FROM payment p
JOIN customer cu ON p.customer_id=cu.customer_id
JOIN address a ON cu.address_id=a.address_id
JOIN city c ON a.city_id=c.city_id
JOIN country co ON c.country_id=co.country_id
GROUP BY co.country
ORDER BY Revenue ASC