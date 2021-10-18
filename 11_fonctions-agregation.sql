-- La moyenne de tous les paiements
select avg(amount) from payment;

-- La moyenne de tous les paiements arrondie à 2 chiffres après la virgule
select round(avg(amount), 2) from payment;

-- Le paiement le plus petit
select min(amount) from payment;

-- Le paiement le plus grand
select max(amount) from payment;

-- La somme de tous les paiements
select sum(amount) from payment;
