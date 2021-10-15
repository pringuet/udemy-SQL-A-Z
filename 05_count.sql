-- Nombre de ligne de la table 'payment'
select count(*) as 'Nbre de lignes' from payment;

-- Nombre de paiement différents de la table 'payment'
select count(distinct amount) as 'Nbre de paiement' from payment;
