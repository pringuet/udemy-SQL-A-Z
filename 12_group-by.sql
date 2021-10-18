-- La somme de tous les paiements de tous les clients par sommes décroissantes
select customer_id, sum(amount) as total from payment group by customer_id order by total desc;

-- La moyenne de tous les paiements de tous les clients par moyennes décroissantes
select customer_id, avg(amount) as moyenne from payment group by customer_id order by moyenne desc;

-- Combien de locations effectuées par chaque employé
select staff_id, count(*) from payment group by staff_id;

-- Nombre de films par type de public (rating)
select rating, count(*) from film group by rating;

-- La moyenne du prix de location (rental_rate) par type de public (rating)
select rating, avg(rental_rate) from film group by rating;

-- Le nombre de films par durée de location (rental_duration)
select rental_duration, count(*) from film group by rental_duration;
