-- Prénoms et noms des clients dont le prénom commence par 'Z'
select first_name, last_name from customer where first_name like 'Z%';

-- Prénoms et noms des clients dont le prénom se termine par 'B'
select first_name, last_name from customer where first_name like '%B';

-- Prénoms et noms des clients dont le prénom commence par 'W' et se termine par 'A'
select first_name, last_name from customer where first_name like 'W%A';

-- Prénoms et noms des clients dont le prénom commence par 'BAR' et se termine par 'A'
select first_name, last_name from customer where first_name like 'BAR%A';

-- Prénoms et noms des clients dont le prénom contient un 'A' en deuxième position et se termine par 'ARA'
select first_name, last_name from customer where first_name like '_A%ARA';