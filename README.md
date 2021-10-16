# Apprendre SQL de A à Z - Zakariyaa ISMAILI

## Importer la base de données : https://downloads.mysql.com/docs/sakila-db.zip

### Le schéma :

```bash
mysql -u root -p < sakila-schema.sql
Enter password: **********
```

```bash
mysql -u root -p sakila  
Enter password: **********
```

```sql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 30
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show tables;
+----------------------------+
| Tables_in_sakila           |
+----------------------------+
| actor                      |
| .....                      |
| .....                 |
| store                      |
+----------------------------+
23 rows in set (0.00 sec)

mysql> exit;
Bye
```

### Les données :

```bash
mysql -u root -p sakila < sakila-data.sql
Enter password: **********
```

```bash
mysql -u root -p sakila
Enter password: **********
```

```sql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 32
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select * from actor limit 5;
+----------+------------+--------------+---------------------+
| actor_id | first_name | last_name    | last_update         |
+----------+------------+--------------+---------------------+
|        1 | PENELOPE   | GUINESS      | 2006-02-15 04:34:33 |
|        2 | NICK       | WAHLBERG     | 2006-02-15 04:34:33 |
|        3 | ED         | CHASE        | 2006-02-15 04:34:33 |
|        4 | JENNIFER   | DAVIS        | 2006-02-15 04:34:33 |
|        5 | JOHNNY     | LOLLOBRIGIDA | 2006-02-15 04:34:33 |
+----------+------------+--------------+---------------------+
5 rows in set (0.00 sec)

mysql> exit;
Bye
```

## Count :

Elle ne prends pas en compte les valeurs nulles.

Elle s'utilise également également avec le mot clé `distinct` :  
`select count(distinct first_name) from customer;`

## Order By :
`order by` peut s'appliquer sur des champs non visible dans le tableau des résultats :  
`select first_name from customer order by last_name desc;`

## Like :
Le `%` remplace une chaîne de caractères :  
`select first_name, last_name from customer where first_name like 'BAR%A';`  
BARBARA	JONES

Le `_` remplace un caractère  
`select first_name, last_name from customer where first_name like '_A%ARA';`  
BARBARA	JONES  
TAMARA	NGUYEN

