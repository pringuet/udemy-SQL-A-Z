-- Les clients qui ont dépensé plus de 200
select customer_id, sum(amount) from payment group by customer_id having sum(amount) > 200;

-- Les magasins ('store-id') dont le nombre de clients est > 300
select store_id, count(customer_id) from customer group by store_id having count(customer_id) > 300;

-- Les moyennes de coût de location ('rental_rate') < 3 par type de public (rating) = {'PG', 'R', 'G'}
select rating, avg(rental_rate) from film where rating in ('PG', 'R', 'G') group by rating having avg(rental_rate) < 3;
