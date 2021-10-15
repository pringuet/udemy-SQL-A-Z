-- Les clients dont le prénom est Jared
select * from customer where first_name = 'Jared';

-- Les paiements dont le montant est de 7.99
select * from payment where amount = 7.99;

-- Les paiements dont le montant est strictement inférieur à 4.99
select * from payment where amount < 4.99;

-- Les paiements dont le montant est inférieur ou égal à 4.99
select * from payment where amount <= 4.99;

-- Les paiements dont le montant est différent de 4.99
select * from payment where amount != 4.99;

-- Les paiements dont le montant est différent de 10.99 et supérieur ou égal à 7.99
select * from payment where amount <> 10.99 and amount >= 7.99;

-- Les paiements dont le montant est de 10.99 ou de 7.99
select * from payment where amount = 10.99 or amount = 7.99;

-- Les clients dont l'identifiant de magasin est 1 et l'identifiant d'addresse est strictement supérieur à 5
select * from customer where store_id = 1 and address_id > 5;
