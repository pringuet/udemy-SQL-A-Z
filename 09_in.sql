-- 'customer_id', 'rental_id' et 'return_date' de 'rental' pour les 'customer_id' == { 1, 4, 2 } par 'return_date' descendant
select customer_id, rental_id, return_date from rental where customer_id in (1, 4, 2) order by return_date desc;

-- 'customer_id', 'rental_id' et 'return_date' de 'rental' pour les 'customer_id' != { 1, 4, 2 } par 'return_date' descendant
select customer_id, rental_id, return_date from rental where customer_id not in (1, 4, 2) order by return_date desc;
