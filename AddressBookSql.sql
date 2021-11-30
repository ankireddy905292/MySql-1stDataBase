.....UC-1 Create address book database.....
mysql> create database NewAddressBookServices;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+------------------------+
| Database               |
+------------------------+
| addressbookservice     |
| ankidb                 |
| ankireddy              |
| information_schema     |
| jdbc                   |
| mysql                  |
| names                  |
| newaddressbookservices |
| newjdbc                |
| payroll_services       |
| performance_schema     |
| sys                    |
+------------------------+
12 rows in set (0.01 sec)

.....UC-2 create addressbook table.....

mysql> use newaddressbookservices;
Database changed

mysql> create table newaddressbookservices(firstname varchar(50) not null,lastname varchar(50) not null,city varchar(50) not null,state varchar(50) not null,zip int not null,phonenumber double not null,email varchar(80) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc newaddressbookservices;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| firstname   | varchar(50) | NO   |     | NULL    |       |
| lastname    | varchar(50) | NO   |     | NULL    |       |
| city        | varchar(50) | NO   |     | NULL    |       |
| state       | varchar(50) | NO   |     | NULL    |       |
| zip         | int         | NO   |     | NULL    |       |
| phonenumber | double      | NO   |     | NULL    |       |
| email       | varchar(80) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

.....UC-3insert new contacts.....

mysql> insert into newaddressbookservices(firstname,lastname,city,state,zip,phonenumber,email) values('anki','reddy','kadapa','andhrapradesh','456123','1234567895','anki@gmail.com'),('anvesh','reddy','kadapa','andhrapradesh','123456','1234567892','anvesh@gmail.com'),('ankit','reddy','kadapa','andhrapradesh','123654','4567891236','reddy@gmail.com');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from newaddressbookservices;
+-----------+----------+--------+---------------+--------+-------------+------------------+
| firstname | lastname | city   | state         | zip    | phonenumber | email            |
+-----------+----------+--------+---------------+--------+-------------+------------------+
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com   |
| anvesh    | reddy    | kadapa | andhrapradesh | 123456 |  1234567892 | anvesh@gmail.com |
| ankit     | reddy    | kadapa | andhrapradesh | 123654 |  4567891236 | reddy@gmail.com  |
+-----------+----------+--------+---------------+--------+-------------+------------------+
3 rows in set (0.00 sec)

.....UC-4 editing contacts.....

mysql> update newaddressbookservices set lastname='reddys' where firstname='anvesh';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from newaddressbookservices;
+-----------+----------+--------+---------------+--------+-------------+------------------+
| firstname | lastname | city   | state         | zip    | phonenumber | email            |
+-----------+----------+--------+---------------+--------+-------------+------------------+
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com   |
| anvesh    | reddys   | kadapa | andhrapradesh | 123456 |  1234567892 | anvesh@gmail.com |
| ankit     | reddy    | kadapa | andhrapradesh | 123654 |  4567891236 | reddy@gmail.com  |
+-----------+----------+--------+---------------+--------+-------------+------------------+
3 rows in set (0.00 sec)

.....UC-5 delete contacts.....


mysql> delete from newaddressbookservices where lastname='reddys';
Query OK, 1 row affected (0.01 sec)

mysql> select * from newaddressbookservices;
+-----------+----------+--------+---------------+--------+-------------+-----------------+
| firstname | lastname | city   | state         | zip    | phonenumber | email           |
+-----------+----------+--------+---------------+--------+-------------+-----------------+
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com  |
| ankit     | reddy    | kadapa | andhrapradesh | 123654 |  4567891236 | reddy@gmail.com |
+-----------+----------+--------+---------------+--------+-------------+-----------------+
2 rows in set (0.00 sec)

.....UC-6 retrive contact.....

mysql>  select * from newaddressbookservices where city='kadapa'or state='andhrapradesh';
+-----------+----------+--------+---------------+--------+-------------+-----------------+
| firstname | lastname | city   | state         | zip    | phonenumber | email           |
+-----------+----------+--------+---------------+--------+-------------+-----------------+
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com  |
| ankit     | reddy    | kadapa | andhrapradesh | 123654 |  4567891236 | reddy@gmail.com |
+-----------+----------+--------+---------------+--------+-------------+-----------------+
2 rows in set (0.00 sec)

.....UC-7 size addressbook.....

mysql> select count(firstname) from newaddressbookservices where city='kadapa';
+------------------+
| count(firstname) |
+------------------+
|                2 |
+------------------+
1 row in set (0.00 sec)

mysql> select count(firstname) from newaddressbookservices where state='andhrapradesh';
+------------------+
| count(firstname) |
+------------------+
|                2 |
+------------------+
1 row in set (0.00 sec)

.....UC-8 sorting the name alphabetically.....

mysql> insert into newaddressbookservices(firstname,lastname,city,state,zip,phonenumber,email) values('anki','reddy','kadapa','andhrapradesh','456123','1234567895','anki@gmail.com'),('anvesh','reddy','kadapa','telangana','123456','1234567892','anvesh@gmail.com'),('ankit','reddy','kadapa','tamilanadu','123654','4567891236','reddy@gmail.com');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from newaddressbookservices;
+-----------+----------+--------+---------------+--------+-------------+------------------+
| firstname | lastname | city   | state         | zip    | phonenumber | email            |
+-----------+----------+--------+---------------+--------+-------------+------------------+
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com   |
| ankit     | reddy    | kadapa | andhrapradesh | 123654 |  4567891236 | reddy@gmail.com  |
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com   |
| anvesh    | reddy    | kadapa | telangana     | 123456 |  1234567892 | anvesh@gmail.com |
| ankit     | reddy    | kadapa | tamilanadu    | 123654 |  4567891236 | reddy@gmail.com  |
+-----------+----------+--------+---------------+--------+-------------+------------------+
5 rows in set (0.00 sec)

mysql> select firstname,city from newaddressbookservices order by city;
+-----------+--------+
| firstname | city   |
+-----------+--------+
| anki      | kadapa |
| ankit     | kadapa |
| anki      | kadapa |
| anvesh    | kadapa |
| ankit     | kadapa |
+-----------+--------+
5 rows in set (0.00 sec)

.....UC-9 altering the contacts.....

mysql> alter table newaddressbookservices add bookname varchar(45) not null, add contactType varchar(30) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc newaddressbookservices;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| firstname   | varchar(50) | NO   |     | NULL    |       |
| lastname    | varchar(50) | NO   |     | NULL    |       |
| city        | varchar(50) | NO   |     | NULL    |       |
| state       | varchar(50) | NO   |     | NULL    |       |
| zip         | int         | NO   |     | NULL    |       |
| phonenumber | double      | NO   |     | NULL    |       |
| email       | varchar(80) | NO   |     | NULL    |       |
| bookname    | varchar(45) | NO   |     | NULL    |       |
| contactType | varchar(30) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
9 rows in set (0.01 sec)

mysql> update newaddressbookservices set bookname='one',contactType='family' where lastname='reddy';
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> update newaddressbookservices set bookname='two',contactType='workers' where firstname='anki';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> update newaddressbookservices set bookname='three',contactType='fashion' where lastname='reddys';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from newaddressbookservices where contactType='fashion';
Empty set (0.00 sec)

mysql> select * from newaddressbookservices where contactType='workers';
+-----------+----------+--------+---------------+--------+-------------+----------------+----------+-------------+
| firstname | lastname | city   | state         | zip    | phonenumber | email          | bookname | contactType |
+-----------+----------+--------+---------------+--------+-------------+----------------+----------+-------------+
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com | two      | workers     |
| anki      | reddy    | kadapa | andhrapradesh | 456123 |  1234567895 | anki@gmail.com | two      | workers     |
+-----------+----------+--------+---------------+--------+-------------+----------------+----------+-------------+
2 rows in set (0.00 sec)

.....UC-10 count of contacts.....

mysql>  select count(firstname) from newaddressbookservices where contactType='workers';
+------------------+
| count(firstname) |
+------------------+
|                2 |
+------------------+
1 row in set (0.00 sec)

mysql>







