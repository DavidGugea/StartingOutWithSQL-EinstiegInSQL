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