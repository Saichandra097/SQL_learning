+--------+------------------------------+-----------+-----------+----------------+--------------+------------+
| pub_id | pub_name                     | pub_city  | country   | country_office | no_of_branch | estd       |
+--------+------------------------------+-----------+-----------+----------------+--------------+------------+
| P001   | Jex Max Publication          | New York  | USA       | New York       |           15 | 1969-12-25 |
| P002   | BPP Publication              | Mumbai    | India     | New Delhi      |           10 | 1985-10-01 |
| P003   | New Harrold Publication      | Adelaide  | Australia | Sydney         |            6 | 1975-09-05 |
| P004   | Ultra Press Inc.             | London    | UK        | London         |            8 | 1948-07-10 |
| P005   | Mountain Publication         | Houstan   | USA       | Sun Diego      |           25 | 1975-01-01 |
| P006   | Summer Night Publication     | New York  | USA       | Atlanta        |           10 | 1990-12-10 |
| P007   | Pieterson Grp. of Publishers | Cambridge | UK        | London         |            6 | 1950-07-15 |
| P008   | Novel Publisher Ltd.         | New Delhi | India     | Bangalore      |           10 | 2000-01-01 |
+--------+------------------------------+-----------+-----------+----------------+--------------+------------+
SELECT 
COUNT(IF(country='USA',1,NULL)) AS USA,
COUNT(IF(country='UK',1,NULL)) AS UK
FROM 
Publisher

SELECT COUNT(IF(condition,1,NULL))