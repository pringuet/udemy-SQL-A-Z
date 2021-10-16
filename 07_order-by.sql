-- Prénoms et noms des clients classés par prénoms ascendants
select first_name, last_name from customer order by first_name asc;

-- Prénoms et noms des clients classés par noms décendants
select first_name, last_name from customer order by last_name desc;

-- Prénoms et noms des clients classés par prénoms ascendants et par noms décendants
-- NB : restriction aux prénoms 'Willie' et 'Jamie' pour mettre en évidence la coexistence des 2 modes de classements
select first_name, last_name from customer where first_name in ('Willie', 'Jamie')
order by first_name asc, last_name desc ;

-- Prénoms des clients classés par noms décendants
select first_name from customer order by last_name desc;
