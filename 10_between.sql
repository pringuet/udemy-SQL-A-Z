-- les paiements ('customer_id', 'amount') dont le montant est compris entre 0 et 2 par montants ascendants
select customer_id, amount from payment where amount between 0 and 2 order by amount asc;

-- les paiements ('customer_id', 'amount') dont le montant n'est pas compris entre 0 et 2 par montants ascendants
select customer_id, amount from payment where amount not between 0 and 2 order by amount asc;

-- les paiements ('customer_id', 'amount', 'payment_date') sur la période du '2005-06-01' et le '2005-07-01' par dates ascendantes
select customer_id, amount, payment_date from payment where payment_date between '2005-06-01' and '2005-07-01' order by payment_date asc;
