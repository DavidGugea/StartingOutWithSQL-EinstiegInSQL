#### The first SQL Book / Starting out with SQL

***Table of contents:***
1. Grundlagen kennenlernen und verstehen / Understanding the basics
2. Los geht's: Die Grundfunktionen der Tabellenabfrage (SELECT ) / The basic functions of table queries ( SELECT ) 
3. Zeilen einfügen ( INSERT ), ändern ( UPDATE ) und löschen ( DELETE, TRUNCATE ) / Inserting rows ( INSERT ), updating ( UPDATE ) and delete ( DELETE,  TRUNCATE ) 
4. Tabellen anlegen ( CREATE TABLE ) / Creating tables ( CREATE TABLE ) 
5. Mengeoperationen anwenden / Using set operations 
6. Benutzer, Rollen und ihre Berechtigungen / Users, roles and their authorizations
7. Datenbanken modellieren / Modellings databases
8. Datenmodelle optimieren ( Normalisierung ) / Optimizing database models ( Normalization )
9. Datenmodelle in Tabellen überführen / Converting data model in tables
10. Operationen auf Tabellen in Beziehungen anwenden / Applying operations to tables in relationships
11. Transaktionen / Transactions
12. Tabellenstrukturen verändern / Changing table structures
13. Mit SQL rechnen / Calculating with SQL
14. Skalarfunktionen anwenden / Using scalar functions
15. Bedingungslogik / Condition logic
16. Mit Zeit und Datum arbeiten / Working with time and date
17. Spaltenwerte gruppieren ( GROUP BY ) / Grouping column values ( GROUP BY ) 
18. Mächtiges Werkzeug : Die Unterabfragen ( Sub queries ) / Sub queries 
19. Views: Abfragen in virtuellen Tabellen speichern / Saving queries in virtual tables
20. Performance von Abfragen optimieren ( Index ) / Optimizing queries performance

---

### 1. Grundlagen kennenlernen und verstehen / Understanding the basics

A database that uses tables to store data is called a relational database.
There are more types of relational databases, here are some examples : 
* IBM DB2
* Oracle DB
* Microsoft SQL Server
* Oracle MySQL
* MariaDB
* PostgreSQL

**SQL is a standard from the ISO** ( International Organization for Standardization ). Every Database has slight differences from the standard SQL language which are called **SQL dialects**.

In SQL there are two types of comments:
* One line comment using two dashes : --
* Multi line comment, like in CSS for example : /* */

You can write queries in different methods. You either write them in one line which makes things a little harder to read if it's a long query, or you structure it on multiple lines. Example :

```SQL  
SELECT
    name, middle_name, bonus
FROM
    workers
WHERE 
    bonus > 500;
```
 
Or :

```SQL
SELECT name, middle_name, bonus FROM workers WHERE bonus > 500;
```

### 2. Los geht's: Die Grundfunktionen der Tabellenabfrage (SELECT ) / The basic functions of table queries ( SELECT ) 

The most basic selection that you can do is the **SELECT [columns-name] FROM [table-name]**.
Example:

```SQL
SELECT
    name,
    age
FROM
    workers;
```

If you want to select all the columns, use the asterix sign *\**:

```SQL
SELECT * FROM workers;
```

You usually don't want to select everything and you want to filter you data based on certain requirments. In order do filter data you have to use **WHERE**.

Here's a table of filters that you can use with ***WHERE***:

| Operator | Function |
| -------- | -------- |
| value1 = value2 | Equal to == in programming languages, it proves if two values are equal or not |
| value1 <> value2 OR value1 != value2 | Proves if value1 is not equal to value2 |
| value1 < value2 | Returns if value1 is smaller than value2 | 
| value1 <= value2 | Returns if value1 is smaller or equal than value2 |
| value1 > value2 | Returns if value1 is bigger than value2 |
| value1 >= value2 | Returns if value1 is bigger or equal than value2 |
| value **BETWEEN** value1 **AND** value2 | Proves if value is between value1 & value2 |
| value **NOT BETWEEN** value1 **AND** value2 | Proves if value is not between value1 & value2 |
| value **LIKE** pattern | Proves if value looks like the given pattern |
| value **NOT LIKE** pattern | Proves if value doesn't look like the given pattern |
| value **IN** (value1, value2, ...) | Proves if the value is in the given list |
| value **NOT IN** (value1, value2, ...) | Provesi if the value is not in the given list |
| value **IS NULL** | Proves if the given value is null|
| value **IS NOT NULL** | Proves if the given value is not null |

Here are some examples:

```SQL
SELECT
    name,
    age
FROM
    workers
WHERE
    name = "Johnson"

-- Selects all the name&age columns from the table workers where the name is equal to "Johnson"
```

```SQL
SELECT
    name,
    age
FROM
    workers
WHERE age BETWEEN 18 AND 30

-- Selects all the name&age columns from the table workers where the age is between 18 & 30
```

```SQL
SELECT
    name,
    age
FROM
    workers
WHERE age IN (18, 19);

-- Selects all the name&age columns from the table workers where the age is in the list of values that contains the numbers 18 & 19
```

The **LIKE** operator is a little different and harder to use. You can think about REGEX when it comes to the **LIKE** operator. It doesn't use the same patterns but it is very familiar.

| Regex | SQL LIKE OPERATOR |
| ----- | ----------------- |
| .* | % |
| . | _ |

An important thing to know is that for SQL "A%" and "a%" are the same thing but if you use something else like PostgreSQL they are not the same anymore.

Example:

```SQL
WHERE column1 LIKE 'a%'

-- column1 has to start with a, and after a you can have any amount of any characters like, it doesn't matter ( e. g. asdf123, aaaa, it just has to start with an 'a' )
```

```SQL
WHERE column1 LIKE 'fac_book'

-- column1 can have any character in the place where you have '_', it can be anything, but only one sing e character is allowed not more.
```

The **NULL** value means that the value in a certain column is not defined yet or it can't be read. **NULL** doesn't mean 0, it simply doesn't mean anything, the value is nothing. Even if you have an empty string like **""**, that is **not NULL**. ***The NULL value can be seen as a placeholder for a value that has not been given yet.***
**NULL** also influences filter operations. If you try to filter a value that is NULL you won't get neither true nor false, you will get **NULL** as a result, which makes **NULL the third logical value**. For example, true & true is true, false & false is false but whatever you mix up with **NULL** will be **NULL**.

Now that we have learned how to filter the selected values we can also learn how to limit the output amount. We can easliy do that by using the keywrod **LIMIT**.

```SQL
SELECT name, age FROM workers LIMIT 2;
```

Now SQL will only take 2 columns not all of them.
The **LIMIT** keyword isn't the same in all DB systems :

| DB System | Limit function |
| --------- | -------------- |
| MySQL | LIMIT > SELECT name, age FROM workers LIMIT 2|
| Microsoft SQL Server | TOP > SELECT TOP 2 name, age FROM workers |
| PostgreSQL | FETCH > SELECT name, age FROM workers FETCH FIRST 2 ROWS ONLY |

Now that we know how to limit the amount of output we can also order our output using the **ORDER BY** keyword. This keyword is pretty straight forward, there's not a lot to explain to it. Here is an example:

```SQL
SELECT 
    name,
    age
FROM
    workers
ORDER BY 
    name,
    age;

-- First order by name, if two names are the same then order by age.
```

You can also mix it with **WHERE**:

```SQL
SELECT
    name,
    age
FROM
    workers
WHERE
    salary > 3000
ORDER BY 
    name,
    age;
```

By default you order in ascending order, so there's no need to write the keyword *ASC* but if you want to order in descending order you will have to use the keyword *DESC*:

```SQL
SELECT
    name,
    age
FROM
    workers
ORDER BY age DESC;
```

Working with constants is also an important thing to know. You can mix up constants with columns from the table when selecting or filtering values. Here is an example:

```SQL
SELECT
    name,
    " is ",
    age,
    " years old."
FROM 
    workers;
```

The columns where you put the constants will be named exactly like the constant. 
Let's say that you select the column "name" and you want the name of the column to be more specific, something like "First_name_of_the_worker", you can change the name of the column by using the keyword **AS**. Example:

```SQL
SELECT
    name AS worker_first_name,
    age AS worker_age,
    salary AS worker_salary
FROM
    worker
WHERE
    salary >= 100000;
```

In case you want to choose only unique rows that never repeat each other you must use the **DISTINCT** keyword:

```SQL
SELECT DISTINCT name FROM workers;
```

Now, no names will be repeated in the made selection.