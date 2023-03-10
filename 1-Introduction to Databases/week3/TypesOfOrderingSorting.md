# Types of ordering / sorting
In this reading, you’ll explore using the ORDER BY clause for sorting data. You’ve learned about the purpose of the ORDER BY clause and the different forms in which it can be used to sort data. The main objective of this reading is to present some more examples related to some practical scenarios of using the ORDER BY clause for sorting data in a table.    


### The ORDER BY clause
The ORDER BY clause is useful when you want to sort or order the results obtained when running a SQL SELECT query. Data in a database become more meaningful when they are ordered or sorted in a specific order. Ordered data helps people make more accurate business decisions effectively and efficiently. 

In SQL, there’s the ORDER BY clause that can help you achieve this. If you run a SQL SELECT query, you get a set of unsorted results. If you want to sort them, you need to add the special ORDER BY clause into the SQL SELECT statement. 

It can be used after the FROM clause as in:

```sql
SELECT *  
FROM Employee 
ORDER BY <order by column name>; 
```

After the ORDER BY keyword, you need to specify the column name based on the data that needs to be sorted. Optionally, you can specify the keywords ASC or DESC after the column name. This is to indicate if the ordering should be in ascending or descending order.

Ascending and descending order are the two main types of ordering. If ASC or DESC are not specified, the data is sorted by default in ascending order. The ASC and DESC keywords sort the data based on the order by column, taking into consideration the data type of column or field, namely integer, numeric, text and dates.


### Working with the ORDER BY clause
Let’s review some example scenarios that use the ORDER BY clause using the tables in the sample database. You can give SQL SELECT statements using the ORDER BY clause with ASC and DESC keywords as required for these scenarios.


### Sorting by a single column
In the customer table, the data is sorted by default in ascending order within the customer ID field. The customer ID field is numeric, so the data is sorted in ascending numeric order. Now let’s examine how to order this data in the descending order of the Customer ID field. 

To do this, you can run the following query:

```sql
SELECT * 
FROM customers 
ORDER BY CustomerId DESC; 
```
```terminal
+------------+-----------+--------------+---------+------------------------------------------+--------------+--------+----------------+------------+---------------------+------+-----------------------------+--------------+
| CustomerId | FirstName | LastName     | Company | Address                                  | City         |  State | Country        | PostalCode | Phone               |  Fax | Email                       | SupportRepId |
+------------+-----------+--------------+---------+------------------------------------------+--------------+--------+----------------+------------+---------------------+------+-----------------------------+--------------+
|         59 | Puja      | Srivastava   |    None | 3,Raj Bhavan Road                        | Bangalore    |   None | India          | 560001     | +91 080 22289999    | None | puja_srivastava@yahoo.in    |            3 |
|         58 | Manoj     | Pareek       |    None | 12,Community Centre                      | Delhi        |   None | India          | 110017     | +91 0124 39883988   | None | manoj.pareek@rediff.com     |            3 |
|         57 | Luis      | Rojas        |    None | Calle Lira, 198                          | Santiago     |   None | Chile          | None       | +56 (0)2 635 4444   | None | luisrojas@yahoo.cl          |            5 |
|         56 | Diego     | Gutiérrez    |    None | 307 Macacha Güemes                       | Buenos Aires |   None | Argentina      | 1106       | +54 (0)11 4311 4333 | None | diego.gutierrez@yahoo.ar    |            4 |
|         55 | Mark      | Taylor       |    None | 421 Bourke Street                        | Sidney       |    NSW | Australia      | 2010       | +61 (02) 9332 3633  | None | mark.taylor@yahoo.au        |            4 |
|         54 | Steve     | Murray       |    None | 110 Raeburn Pl                           | Edinburgh    |   None | United Kingdom | EH4 1HH    | +44 0131 315 3300   | None | steve.murray@yahoo.uk       |            5 |
|         53 | Phil      | Hughes       |    None | 113 Lupus St                             | London       |   None | United Kingdom | SW1V 3EN   | +44 020 7976 5722   | None | phil.hughes@gmail.com       |            3 |
|         52 | Emma      | Jones        |    None | 202 Hoxton Street                        | London       |   None | United Kingdom | N1 5LH     | +44 020 7707 0707   | None | emma_jones@hotmail.com      |            3 |
|         51 | Joakim    | Johansson    |    None | Celsiusg. 9                              | Stockholm    |   None | Sweden         | 11230      | +46 08-651 52 52    | None | joakim.johansson@yahoo.se   |            5 |
|         50 | Enrique   | Muñoz        |    None | C/ San Bernardo 85                       | Madrid       |   None | Spain          | 28015      | +34 914 454 454     | None | enrique_munoz@yahoo.es      |            5 |
|         49 | Stanisław | Wójcik       |    None | Ordynacka 10                             | Warsaw       |   None | Poland         | 00-358     | +48 22 828 37 39    | None | stanisław.wójcik@wp.pl      |            4 |
|         48 | Johannes  | Van der Berg |    None | Lijnbaansgracht 120bg                    | Amsterdam    |     VV | Netherlands    | 1016       | +31 020 6223130     | None | johavanderberg@yahoo.nl     |            5 |
|         47 | Lucas     | Mancini      |    None | Via Degli Scipioni, 43                   | Rome         |     RM | Italy          | 00192      | +39 06 39733434     | None | lucas.mancini@yahoo.it      |            5 |
|         46 | Hugh      | O'Reilly     |    None | 3 Chatham Street                         | Dublin       | Dublin | Ireland        | None       | +353 01 6792424     | None | hughoreilly@apple.ie        |            3 |
|         45 | Ladislav  | Kovács       |    None | Erzsébet krt. 58.                        | Budapest     |   None | Hungary        | H-1073     | None                | None | ladislav_kovacs@apple.hu    |            3 |
|         44 | Terhi     | Hämäläinen   |    None | Porthaninkatu 9                          | Helsinki     |   None | Finland        | 00530      | +358 09 870 2000    | None | terhi.hamalainen@apple.fi   |            3 |
|         43 | Isabelle  | Mercier      |    None | 68, Rue Jouvence                         | Dijon        |   None | France         | 21000      | +33 03 80 73 66 99  | None | isabelle_mercier@apple.fr   |            3 |
|         42 | Wyatt     | Girard       |    None | 9, Place Louis Barthou                   | Bordeaux     |   None | France         | 33000      | +33 05 56 96 96 96  | None | wyatt.girard@yahoo.fr       |            3 |
|         41 | Marc      | Dubois       |    None | 11, Place Bellecour                      | Lyon         |   None | France         | 69002      | +33 04 78 30 30 30  | None | marc.dubois@hotmail.com     |            5 |
|         40 | Dominique | Lefebvre     |    None | 8, Rue Hanovre                           | Paris        |   None | France         | 75002      | +33 01 47 42 71 71  | None | dominiquelefebvre@gmail.com |            4 |
|         39 | Camille   | Bernard      |    None | 4, Rue Milton                            | Paris        |   None | France         | 75009      | +33 01 49 70 65 65  | None | camille.bernard@yahoo.fr    |            4 |
|         38 | Niklas    | Schröder     |    None | Barbarossastraße 19                      | Berlin       |   None | Germany        | 10779      | +49 030 2141444     | None | nschroder@surfeu.de         |            3 |
|         37 | Fynn      | Zimmermann   |    None | Berger Straße 10                         | Frankfurt    |   None | Germany        | 60316      | +49 069 40598889    | None | fzimmermann@yahoo.de        |            3 |
|         36 | Hannah    | Schneider    |    None | Tauentzienstraße 8                       | Berlin       |   None | Germany        | 10789      | +49 030 26550280    | None | hannah.schneider@yahoo.de   |            5 |
|         35 | Madalena  | Sampaio      |    None | Rua dos Campeões Europeus de Viena, 4350 | Porto        |   None | Portugal       | None       | +351 (225) 022-448  | None | masampaio@sapo.pt           |            4 |
+------------+-----------+--------------+---------+------------------------------------------+--------------+--------+----------------+------------+---------------------+------+-----------------------------+--------------+
(Output limit exceeded, 25 of 59 total rows shown)
```

In the output, the records are sorted in descending order (largest to smallest) of the CustomerIdwhich has a numeric data type.

Now let’s examine how sorting happens for a text data typed column. Consider sorting the data by the City column which has a text data type of VARCHAR. If you want to sort the customer data by city, use the following SELECT statement:

```sql
SELECT * 
FROM customers 
ORDER BY City; 
```
```terminal
+------------+-----------+--------------+------------+------------------------+--------------+--------+----------------+------------+---------------------+--------------------+---------------------------+--------------+
| CustomerId | FirstName | LastName     |    Company | Address                | City         | State  | Country        | PostalCode | Phone               |                Fax | Email                     | SupportRepId |
+------------+-----------+--------------+------------+------------------------+--------------+--------+----------------+------------+---------------------+--------------------+---------------------------+--------------+
|         48 | Johannes  | Van der Berg |       None | Lijnbaansgracht 120bg  | Amsterdam    | VV     | Netherlands    | 1016       | +31 020 6223130     |               None | johavanderberg@yahoo.nl   |            5 |
|         59 | Puja      | Srivastava   |       None | 3,Raj Bhavan Road      | Bangalore    | None   | India          | 560001     | +91 080 22289999    |               None | puja_srivastava@yahoo.in  |            3 |
|         36 | Hannah    | Schneider    |       None | Tauentzienstraße 8     | Berlin       | None   | Germany        | 10789      | +49 030 26550280    |               None | hannah.schneider@yahoo.de |            5 |
|         38 | Niklas    | Schröder     |       None | Barbarossastraße 19    | Berlin       | None   | Germany        | 10779      | +49 030 2141444     |               None | nschroder@surfeu.de       |            3 |
|         42 | Wyatt     | Girard       |       None | 9, Place Louis Barthou | Bordeaux     | None   | France         | 33000      | +33 05 56 96 96 96  |               None | wyatt.girard@yahoo.fr     |            3 |
|         23 | John      | Gordon       |       None | 69 Salem Street        | Boston       | MA     | USA            | 2113       | +1 (617) 522-1333   |               None | johngordon22@yahoo.com    |            4 |
|         13 | Fernanda  | Ramos        |       None | Qe 7 Bloco G           | Brasília     | DF     | Brazil         | 71020-677  | +55 (61) 3363-5547  | +55 (61) 3363-7855 | fernadaramos4@uol.com.br  |            4 |
|          8 | Daan      | Peeters      |       None | Grétrystraat 63        | Brussels     | None   | Belgium        | 1000       | +32 02 219 03 03    |               None | daan_peeters@apple.be     |            4 |
|         45 | Ladislav  | Kovács       |       None | Erzsébet krt. 58.      | Budapest     | None   | Hungary        | H-1073     | None                |               None | ladislav_kovacs@apple.hu  |            3 |
|         56 | Diego     | Gutiérrez    |       None | 307 Macacha Güemes     | Buenos Aires | None   | Argentina      | 1106       | +54 (0)11 4311 4333 |               None | diego.gutierrez@yahoo.ar  |            4 |
|         24 | Frank     | Ralston      |       None | 162 E Superior Street  | Chicago      | IL     | USA            | 60611      | +1 (312) 332-3232   |               None | fralston@gmail.com        |            3 |
|          9 | Kara      | Nielsen      |       None | Sønder Boulevard 51    | Copenhagen   | None   | Denmark        | 1720       | +453 3331 9991      |               None | kara.nielsen@jubii.dk     |            4 |
|         19 | Tim       | Goyer        | Apple Inc. | 1 Infinite Loop        | Cupertino    | CA     | USA            | 95014      | +1 (408) 996-1010   |  +1 (408) 996-1011 | tgoyer@apple.com          |            3 |
|         58 | Manoj     | Pareek       |       None | 12,Community Centre    | Delhi        | None   | India          | 110017     | +91 0124 39883988   |               None | manoj.pareek@rediff.com   |            3 |
|         43 | Isabelle  | Mercier      |       None | 68, Rue Jouvence       | Dijon        | None   | France         | 21000      | +33 03 80 73 66 99  |               None | isabelle_mercier@apple.fr |            3 |
|         46 | Hugh      | O'Reilly     |       None | 3 Chatham Street       | Dublin       | Dublin | Ireland        | None       | +353 01 6792424     |               None | hughoreilly@apple.ie      |            3 |
|         54 | Steve     | Murray       |       None | 110 Raeburn Pl         | Edinburgh    | None   | United Kingdom | EH4 1HH    | +44 0131 315 3300   |               None | steve.murray@yahoo.uk     |            5 |
|         14 | Mark      | Philips      |      Telus | 8210 111 ST NW         | Edmonton     | AB     | Canada         | T6G 2C7    | +1 (780) 434-4554   |  +1 (780) 434-5565 | mphilips12@shaw.ca        |            5 |
|         26 | Richard   | Cunningham   |       None | 2211 W Berry Street    | Fort Worth   | TX     | USA            | 76110      | +1 (817) 924-7272   |               None | ricunningham@hotmail.com  |            4 |
|         37 | Fynn      | Zimmermann   |       None | Berger Straße 10       | Frankfurt    | None   | Germany        | 60316      | +49 069 40598889    |               None | fzimmermann@yahoo.de      |            3 |
|         31 | Martha    | Silk         |       None | 194A Chain Lake Drive  | Halifax      | NS     | Canada         | B3S 1C5    | +1 (902) 450-0450   |               None | marthasilk@gmail.com      |            5 |
|         44 | Terhi     | Hämäläinen   |       None | Porthaninkatu 9        | Helsinki     | None   | Finland        | 00530      | +358 09 870 2000    |               None | terhi.hamalainen@apple.fi |            3 |
|         34 | João      | Fernandes    |       None | Rua da Assunção 53     | Lisbon       | None   | Portugal       | None       | +351 (213) 466-111  |               None | jfernandes@yahoo.pt       |            4 |
|         52 | Emma      | Jones        |       None | 202 Hoxton Street      | London       | None   | United Kingdom | N1 5LH     | +44 020 7707 0707   |               None | emma_jones@hotmail.com    |            3 |
|         53 | Phil      | Hughes       |       None | 113 Lupus St           | London       | None   | United Kingdom | SW1V 3EN   | +44 020 7976 5722   |               None | phil.hughes@gmail.com     |            3 |
+------------+-----------+--------------+------------+------------------------+--------------+--------+----------------+------------+---------------------+--------------------+---------------------------+--------------+
(Output limit exceeded, 25 of 59 total rows shown)
```

An ordering method like ASC or DESC wasn’t specified in the ORDER BY clause. So, by default, the ordering happens in ascending order. 

If you review the City column, you'll notice that the data is sorted in ascending alphabetical order (A to Z). 

Let’s now run the following SELECT statement:

```sql
SELECT * 
FROM customers 
ORDER BY City DESC; 
```
```terminal
+------------+-----------+-------------+--------------------------------------------------+------------------------------------------+---------------------+-------+----------------+------------+--------------------+--------------------+-------------------------------+--------------+
| CustomerId | FirstName | LastName    |                                          Company | Address                                  | City                | State | Country        | PostalCode | Phone              |                Fax | Email                         | SupportRepId |
+------------+-----------+-------------+--------------------------------------------------+------------------------------------------+---------------------+-------+----------------+------------+--------------------+--------------------+-------------------------------+--------------+
|         33 | Ellie     | Sullivan    |                                             None | 5112 48 Street                           | Yellowknife         | NT    | Canada         | X1A 1N6    | +1 (867) 920-2233  |               None | ellie.sullivan@shaw.ca        |            3 |
|         32 | Aaron     | Mitchell    |                                             None | 696 Osborne Street                       | Winnipeg            | MB    | Canada         | R3L 2B9    | +1 (204) 452-6452  |               None | aaronmitchell@yahoo.ca        |            4 |
|         49 | Stanisław | Wójcik      |                                             None | Ordynacka 10                             | Warsaw              | None  | Poland         | 00-358     | +48 22 828 37 39   |               None | stanisław.wójcik@wp.pl        |            4 |
|          7 | Astrid    | Gruber      |                                             None | Rotenturmstraße 4, 1010 Innere Stadt     | Vienne              | None  | Austria        | 1010       | +43 01 5134505     |               None | astrid.gruber@apple.at        |            5 |
|         15 | Jennifer  | Peterson    |                                    Rogers Canada | 700 W Pender Street                      | Vancouver           | BC    | Canada         | V6C 1G8    | +1 (604) 688-2255  |  +1 (604) 688-8756 | jenniferp@rogers.ca           |            3 |
|         27 | Patrick   | Gray        |                                             None | 1033 N Park Ave                          | Tucson              | AZ    | USA            | 85719      | +1 (520) 622-4200  |               None | patrick.gray@aol.com          |            4 |
|         29 | Robert    | Brown       |                                             None | 796 Dundas Street West                   | Toronto             | ON    | Canada         | M6J 1V1    | +1 (416) 363-8888  |               None | robbrown@shaw.ca              |            3 |
|         10 | Eduardo   | Martins     |                                 Woodstock Discos | Rua Dr. Falcão Filho, 155                | São Paulo           | SP    | Brazil         | 01007-010  | +55 (11) 3033-5446 | +55 (11) 3033-4564 | eduardo@woodstock.com.br      |            4 |
|         11 | Alexandre | Rocha       |                             Banco do Brasil S.A. | Av. Paulista, 2022                       | São Paulo           | SP    | Brazil         | 01310-200  | +55 (11) 3055-3278 | +55 (11) 3055-8131 | alero@uol.com.br              |            5 |
|          1 | Luís      | Gonçalves   | Embraer - Empresa Brasileira de Aeronáutica S.A. | Av. Brigadeiro Faria Lima, 2170          | São José dos Campos | SP    | Brazil         | 12227-000  | +55 (12) 3923-5555 | +55 (12) 3923-5566 | luisg@embraer.com.br          |            3 |
|          2 | Leonie    | Köhler      |                                             None | Theodor-Heuss-Straße 34                  | Stuttgart           | None  | Germany        | 70174      | +49 0711 2842222   |               None | leonekohler@surfeu.de         |            5 |
|         51 | Joakim    | Johansson   |                                             None | Celsiusg. 9                              | Stockholm           | None  | Sweden         | 11230      | +46 08-651 52 52   |               None | joakim.johansson@yahoo.se     |            5 |
|         55 | Mark      | Taylor      |                                             None | 421 Bourke Street                        | Sidney              | NSW   | Australia      | 2010       | +61 (02) 9332 3633 |               None | mark.taylor@yahoo.au          |            4 |
|         57 | Luis      | Rojas       |                                             None | Calle Lira, 198                          | Santiago            | None  | Chile          | None       | +56 (0)2 635 4444  |               None | luisrojas@yahoo.cl            |            5 |
|         28 | Julia     | Barnett     |                                             None | 302 S 700 E                              | Salt Lake City      | UT    | USA            | 84102      | +1 (801) 531-7272  |               None | jubarnett@gmail.com           |            5 |
|         47 | Lucas     | Mancini     |                                             None | Via Degli Scipioni, 43                   | Rome                | RM    | Italy          | 00192      | +39 06 39733434    |               None | lucas.mancini@yahoo.it        |            5 |
|         12 | Roberto   | Almeida     |                                           Riotur | Praça Pio X, 119                         | Rio de Janeiro      | RJ    | Brazil         | 20040-020  | +55 (21) 2271-7000 | +55 (21) 2271-7070 | roberto.almeida@riotur.gov.br |            3 |
|         21 | Kathy     | Chase       |                                             None | 801 W 4th Street                         | Reno                | NV    | USA            | 89503      | +1 (775) 223-7665  |               None | kachase@hotmail.com           |            5 |
|         17 | Jack      | Smith       |                            Microsoft Corporation | 1 Microsoft Way                          | Redmond             | WA    | USA            | 98052-8300 | +1 (425) 882-8080  |  +1 (425) 882-8081 | jacksmith@microsoft.com       |            5 |
|          5 | František | Wichterlová |                                 JetBrains s.r.o. | Klanova 9/506                            | Prague              | None  | Czech Republic | 14700      | +420 2 4172 5555   |   +420 2 4172 5555 | frantisekw@jetbrains.com      |            4 |
|          6 | Helena    | Holý        |                                             None | Rilská 3174/6                            | Prague              | None  | Czech Republic | 14300      | +420 2 4177 0449   |               None | hholy@gmail.com               |            5 |
|         35 | Madalena  | Sampaio     |                                             None | Rua dos Campeões Europeus de Viena, 4350 | Porto               | None  | Portugal       | None       | +351 (225) 022-448 |               None | masampaio@sapo.pt             |            4 |
|         39 | Camille   | Bernard     |                                             None | 4, Rue Milton                            | Paris               | None  | France         | 75009      | +33 01 49 70 65 65 |               None | camille.bernard@yahoo.fr      |            4 |
|         40 | Dominique | Lefebvre    |                                             None | 8, Rue Hanovre                           | Paris               | None  | France         | 75002      | +33 01 47 42 71 71 |               None | dominiquelefebvre@gmail.com   |            4 |
|         30 | Edward    | Francis     |                                             None | 230 Elgin Street                         | Ottawa              | ON    | Canada         | K2P 1L7    | +1 (613) 234-3322  |               None | edfrancis@yachoo.ca           |            3 |
+------------+-----------+-------------+--------------------------------------------------+------------------------------------------+---------------------+-------+----------------+------------+--------------------+--------------------+-------------------------------+--------------+
(Output limit exceeded, 25 of 59 total rows shown)
```

Now you’ll notice that the records are ordered in descending alphabetical order (Z to A).

Let’s examine another example of how data is ordered in a sort column that uses a DATE type field. This example uses the invoices table in the sample database. You can use the following SQL SELECT statement to sort the data by the invoice date column:

```sql
SELECT * 
FROM invoices 
ORDER BY InvoiceDate;   
```
```terminal
+-----------+------------+---------------------+---------------------------+---------------+--------------+----------------+-------------------+-------+
| InvoiceId | CustomerId | InvoiceDate         | BillingAddress            | BillingCity   | BillingState | BillingCountry | BillingPostalCode | Total |
+-----------+------------+---------------------+---------------------------+---------------+--------------+----------------+-------------------+-------+
|         1 |          2 | 2009-01-01 00:00:00 | Theodor-Heuss-Straße 34   | Stuttgart     |         None | Germany        | 70174             |  1.98 |
|         2 |          4 | 2009-01-02 00:00:00 | Ullevålsveien 14          | Oslo          |         None | Norway         | 0171              |  3.96 |
|         3 |          8 | 2009-01-03 00:00:00 | Grétrystraat 63           | Brussels      |         None | Belgium        | 1000              |  5.94 |
|         4 |         14 | 2009-01-06 00:00:00 | 8210 111 ST NW            | Edmonton      |           AB | Canada         | T6G 2C7           |  8.91 |
|         5 |         23 | 2009-01-11 00:00:00 | 69 Salem Street           | Boston        |           MA | USA            | 2113              | 13.86 |
|         6 |         37 | 2009-01-19 00:00:00 | Berger Straße 10          | Frankfurt     |         None | Germany        | 60316             |  0.99 |
|         7 |         38 | 2009-02-01 00:00:00 | Barbarossastraße 19       | Berlin        |         None | Germany        | 10779             |  1.98 |
|         8 |         40 | 2009-02-01 00:00:00 | 8, Rue Hanovre            | Paris         |         None | France         | 75002             |  1.98 |
|         9 |         42 | 2009-02-02 00:00:00 | 9, Place Louis Barthou    | Bordeaux      |         None | France         | 33000             |  3.96 |
|        10 |         46 | 2009-02-03 00:00:00 | 3 Chatham Street          | Dublin        |       Dublin | Ireland        | None              |  5.94 |
|        11 |         52 | 2009-02-06 00:00:00 | 202 Hoxton Street         | London        |         None | United Kingdom | N1 5LH            |  8.91 |
|        12 |          2 | 2009-02-11 00:00:00 | Theodor-Heuss-Straße 34   | Stuttgart     |         None | Germany        | 70174             | 13.86 |
|        13 |         16 | 2009-02-19 00:00:00 | 1600 Amphitheatre Parkway | Mountain View |           CA | USA            | 94043-1351        |  0.99 |
|        14 |         17 | 2009-03-04 00:00:00 | 1 Microsoft Way           | Redmond       |           WA | USA            | 98052-8300        |  1.98 |
|        15 |         19 | 2009-03-04 00:00:00 | 1 Infinite Loop           | Cupertino     |           CA | USA            | 95014             |  1.98 |
|        16 |         21 | 2009-03-05 00:00:00 | 801 W 4th Street          | Reno          |           NV | USA            | 89503             |  3.96 |
|        17 |         25 | 2009-03-06 00:00:00 | 319 N. Frances Street     | Madison       |           WI | USA            | 53703             |  5.94 |
|        18 |         31 | 2009-03-09 00:00:00 | 194A Chain Lake Drive     | Halifax       |           NS | Canada         | B3S 1C5           |  8.91 |
|        19 |         40 | 2009-03-14 00:00:00 | 8, Rue Hanovre            | Paris         |         None | France         | 75002             | 13.86 |
|        20 |         54 | 2009-03-22 00:00:00 | 110 Raeburn Pl            | Edinburgh     |         None | United Kingdom | EH4 1HH           |  0.99 |
|        21 |         55 | 2009-04-04 00:00:00 | 421 Bourke Street         | Sidney        |          NSW | Australia      | 2010              |  1.98 |
|        22 |         57 | 2009-04-04 00:00:00 | Calle Lira, 198           | Santiago      |         None | Chile          | None              |  1.98 |
|        23 |         59 | 2009-04-05 00:00:00 | 3,Raj Bhavan Road         | Bangalore     |         None | India          | 560001            |  3.96 |
|        24 |          4 | 2009-04-06 00:00:00 | Ullevålsveien 14          | Oslo          |         None | Norway         | 0171              |  5.94 |
|        25 |         10 | 2009-04-09 00:00:00 | Rua Dr. Falcão Filho, 155 | São Paulo     |           SP | Brazil         | 01007-010         |  8.91 |
+-----------+------------+---------------------+---------------------------+---------------+--------------+----------------+-------------------+-------+
(Output limit exceeded, 25 of 412 total rows shown)
ORDER BY City; 
```

If you review the InvoiceDate column, you’ll notice that the date values are sorted from smallest to largest. That is, they’re sorted in ascending order, which is the default sort order.Now let’s try running this query with the DESC keyword added in the ORDER BY clause.

```sql
SELECT * 
FROM invoices 
ORDER BY InvoiceDate DESC; 
```
```terminal
+-----------+------------+---------------------+------------------------------------------+----------------+--------------+----------------+-------------------+-------+
| InvoiceId | CustomerId | InvoiceDate         | BillingAddress                           | BillingCity    | BillingState | BillingCountry | BillingPostalCode | Total |
+-----------+------------+---------------------+------------------------------------------+----------------+--------------+----------------+-------------------+-------+
|       412 |         58 | 2013-12-22 00:00:00 | 12,Community Centre                      | Delhi          |         None | India          | 110017            |  1.99 |
|       411 |         44 | 2013-12-14 00:00:00 | Porthaninkatu 9                          | Helsinki       |         None | Finland        | 00530             | 13.86 |
|       410 |         35 | 2013-12-09 00:00:00 | Rua dos Campeões Europeus de Viena, 4350 | Porto          |         None | Portugal       | None              |  8.91 |
|       409 |         29 | 2013-12-06 00:00:00 | 796 Dundas Street West                   | Toronto        |           ON | Canada         | M6J 1V1           |  5.94 |
|       408 |         25 | 2013-12-05 00:00:00 | 319 N. Frances Street                    | Madison        |           WI | USA            | 53703             |  3.96 |
|       406 |         21 | 2013-12-04 00:00:00 | 801 W 4th Street                         | Reno           |           NV | USA            | 89503             |  1.98 |
|       407 |         23 | 2013-12-04 00:00:00 | 69 Salem Street                          | Boston         |           MA | USA            | 2113              |  1.98 |
|       405 |         20 | 2013-11-21 00:00:00 | 541 Del Medio Avenue                     | Mountain View  |           CA | USA            | 94040-111         |  0.99 |
|       404 |          6 | 2013-11-13 00:00:00 | Rilská 3174/6                            | Prague         |         None | Czech Republic | 14300             | 25.86 |
|       403 |         56 | 2013-11-08 00:00:00 | 307 Macacha Güemes                       | Buenos Aires   |         None | Argentina      | 1106              |  8.91 |
|       402 |         50 | 2013-11-05 00:00:00 | C/ San Bernardo 85                       | Madrid         |         None | Spain          | 28015             |  5.94 |
|       401 |         46 | 2013-11-04 00:00:00 | 3 Chatham Street                         | Dublin         |       Dublin | Ireland        | None              |  3.96 |
|       399 |         42 | 2013-11-03 00:00:00 | 9, Place Louis Barthou                   | Bordeaux       |         None | France         | 33000             |  1.98 |
|       400 |         44 | 2013-11-03 00:00:00 | Porthaninkatu 9                          | Helsinki       |         None | Finland        | 00530             |  1.98 |
|       398 |         41 | 2013-10-21 00:00:00 | 11, Place Bellecour                      | Lyon           |         None | France         | 69002             |  0.99 |
|       397 |         27 | 2013-10-13 00:00:00 | 1033 N Park Ave                          | Tucson         |           AZ | USA            | 85719             | 13.86 |
|       396 |         18 | 2013-10-08 00:00:00 | 627 Broadway                             | New York       |           NY | USA            | 10012-2612        |  8.91 |
|       395 |         12 | 2013-10-05 00:00:00 | Praça Pio X, 119                         | Rio de Janeiro |           RJ | Brazil         | 20040-020         |  5.94 |
|       394 |          8 | 2013-10-04 00:00:00 | Grétrystraat 63                          | Brussels       |         None | Belgium        | 1000              |  3.96 |
|       392 |          4 | 2013-10-03 00:00:00 | Ullevålsveien 14                         | Oslo           |         None | Norway         | 0171              |  1.98 |
|       393 |          6 | 2013-10-03 00:00:00 | Rilská 3174/6                            | Prague         |         None | Czech Republic | 14300             |  1.98 |
|       391 |          3 | 2013-09-20 00:00:00 | 1498 rue Bélanger                        | Montréal       |           QC | Canada         | H2G 1A7           |  0.99 |
|       390 |         48 | 2013-09-12 00:00:00 | Lijnbaansgracht 120bg                    | Amsterdam      |           VV | Netherlands    | 1016              | 13.86 |
|       389 |         39 | 2013-09-07 00:00:00 | 4, Rue Milton                            | Paris          |         None | France         | 75009             |  8.91 |
|       388 |         33 | 2013-09-04 00:00:00 | 5112 48 Street                           | Yellowknife    |           NT | Canada         | X1A 1N6           |  5.94 |
+-----------+------------+---------------------+------------------------------------------+----------------+--------------+----------------+-------------------+-------+
(Output limit exceeded, 25 of 412 total rows shown)
```

The data is now sorted from the largest to smallest date, which is descending order.


### Ordering by multiple columns
You can also sort data by multiple columns and apply different sort orders to them. Let’s say you want to sort invoice data by both billing city and invoice date. To do this, run the following query:

```sql
SELECT * 
FROM invoices 
ORDER BY BillingCity ASC, InvoiceDate DESC;    
```
```terminal
+-----------+------------+---------------------+-----------------------+-------------+--------------+----------------+-------------------+-------+
| InvoiceId | CustomerId | InvoiceDate         | BillingAddress        | BillingCity | BillingState | BillingCountry | BillingPostalCode | Total |
+-----------+------------+---------------------+-----------------------+-------------+--------------+----------------+-------------------+-------+
|       390 |         48 | 2013-09-12 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              | 13.86 |
|       379 |         48 | 2013-08-02 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              |  1.98 |
|       258 |         48 | 2012-02-09 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              |  0.99 |
|       206 |         48 | 2011-06-21 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              |  8.94 |
|       184 |         48 | 2011-03-19 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              |  3.96 |
|       161 |         48 | 2010-12-15 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              |  1.98 |
|        32 |         48 | 2009-05-10 00:00:00 | Lijnbaansgracht 120bg | Amsterdam   | VV           | Netherlands    | 1016              |  8.91 |
|       284 |         59 | 2012-05-30 00:00:00 | 3,Raj Bhavan Road     | Bangalore   | None         | India          | 560001            |  8.91 |
|       229 |         59 | 2011-09-30 00:00:00 | 3,Raj Bhavan Road     | Bangalore   | None         | India          | 560001            | 13.86 |
|       218 |         59 | 2011-08-20 00:00:00 | 3,Raj Bhavan Road     | Bangalore   | None         | India          | 560001            |  1.98 |
|        97 |         59 | 2010-02-26 00:00:00 | 3,Raj Bhavan Road     | Bangalore   | None         | India          | 560001            |  1.99 |
|        45 |         59 | 2009-07-08 00:00:00 | 3,Raj Bhavan Road     | Bangalore   | None         | India          | 560001            |  5.94 |
|        23 |         59 | 2009-04-05 00:00:00 | 3,Raj Bhavan Road     | Bangalore   | None         | India          | 560001            |  3.96 |
|       321 |         36 | 2012-11-14 00:00:00 | Tauentzienstraße 8    | Berlin      | None         | Germany        | 10789             |  0.99 |
|       291 |         38 | 2012-06-30 00:00:00 | Barbarossastraße 19   | Berlin      | None         | Germany        | 10779             |  8.91 |
|       269 |         36 | 2012-03-26 00:00:00 | Tauentzienstraße 8    | Berlin      | None         | Germany        | 10789             |  5.94 |
|       247 |         36 | 2011-12-23 00:00:00 | Tauentzienstraße 8    | Berlin      | None         | Germany        | 10789             |  3.96 |
|       236 |         38 | 2011-10-31 00:00:00 | Barbarossastraße 19   | Berlin      | None         | Germany        | 10779             | 13.86 |
|       224 |         36 | 2011-09-20 00:00:00 | Tauentzienstraße 8    | Berlin      | None         | Germany        | 10789             |  1.98 |
|       225 |         38 | 2011-09-20 00:00:00 | Barbarossastraße 19   | Berlin      | None         | Germany        | 10779             |  1.98 |
|       104 |         38 | 2010-03-29 00:00:00 | Barbarossastraße 19   | Berlin      | None         | Germany        | 10779             |  0.99 |
|        95 |         36 | 2010-02-13 00:00:00 | Tauentzienstraße 8    | Berlin      | None         | Germany        | 10789             |  8.91 |
|        52 |         38 | 2009-08-08 00:00:00 | Barbarossastraße 19   | Berlin      | None         | Germany        | 10779             |  5.94 |
|        40 |         36 | 2009-06-15 00:00:00 | Tauentzienstraße 8    | Berlin      | None         | Germany        | 10789             | 13.86 |
|        30 |         38 | 2009-05-06 00:00:00 | Barbarossastraße 19   | Berlin      | None         | Germany        | 10779             |  3.96 |
+-----------+------------+---------------------+-----------------------+-------------+--------------+----------------+-------------------+-------+
(Output limit exceeded, 25 of 412 total rows shown)
```

You’ll notice that the data is sorted in ascending order of BillingCity. That’s why the data in the BillingCity column is sorted in alphabetical order. The data of the InvoiceDatecolumn is in turn sorted in descending order. 

For example, if you review the records with the billing city of Amsterdam, the invoice dates are ordered in descending order from largest to smallest date. Similarly, if you examine the other sets of data closely, you’ll observe the same.

The main types of ordering in SQL are ASC, ascending, and DESC, descending. How the data is ordered in these two cases would depend on the data type of the field or column being used as the sort column.
