Microsoft Windows [Version 10.0.22631.4890]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>CD C:\xampp1\mysql\bin

C:\xampp1\mysql\bin>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 31
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE WEEKTIGA;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> USE WEEKTIGA
Database changed
MariaDB [WEEKTIGA]> CREATE TABLE MODULEMPAT (
    -> NPM CHAR(5) Primary Key NOT NULL,
    -> Nama VARCHAR(25) NOT NULL,
    -> Tempat_Lahir VARCHAR(30) NOT NULL,
    -> Tanggal_Lahir Date NOT NULL,
    -> Jenis_Kelamin Enum('L','P') NOT NULL,
    -> No_HP VARCHAR(25) NOT NULL
    -> );
Query OK, 0 rows affected (0.024 sec)

MariaDB [WEEKTIGA]> SHOW TABLES;
+--------------------+
| Tables_in_weektiga |
+--------------------+
| modulempat         |
+--------------------+
1 row in set (0.001 sec)

MariaDB [WEEKTIGA]> DESC MODULEMPAT;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| NPM           | char(5)       | NO   | PRI | NULL    |       |
| Nama          | varchar(25)   | NO   |     | NULL    |       |
| Tempat_Lahir  | varchar(30)   | NO   |     | NULL    |       |
| Tanggal_Lahir | date          | NO   |     | NULL    |       |
| Jenis_Kelamin | enum('L','P') | NO   |     | NULL    |       |
| No_HP         | varchar(25)   | NO   |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
6 rows in set (0.029 sec)

MariaDB [WEEKTIGA]> INSERT INTO MODULEMPAT VALUES ('6052', 'Nayla', 'Temanggung', '2005/10/16', 'p', '085900001114');
Query OK, 1 row affected (0.012 sec)

MariaDB [WEEKTIGA]> select * from MODULEMPAT;
+------+-------+--------------+---------------+---------------+--------------+
| NPM  | Nama  | Tempat_Lahir | Tanggal_Lahir | Jenis_Kelamin | No_HP        |
+------+-------+--------------+---------------+---------------+--------------+
| 6052 | Nayla | Temanggung   | 2005-10-16    | P             | 085900001114 |
+------+-------+--------------+---------------+---------------+--------------+
1 row in set (0.001 sec)

MariaDB [WEEKTIGA]> INSERT INTO MODULEMPAT VALUES ('6091', 'Narend', 'Wonosobo', '2007/11/02', 'L', '085901012005');
Query OK, 1 row affected (0.003 sec)

MariaDB [WEEKTIGA]> INSERT INTO MODULEMPAT VALUES ('6092', 'Alvita', 'Semarang', '2007/06/28', 'p', '085901012006');
Query OK, 1 row affected (0.011 sec)

MariaDB [WEEKTIGA]> INSERT INTO MODULEMPAT VALUES ('6093', 'Adhyasta', 'Jogja', '2006/06/06', 'L', '085901012007');
Query OK, 1 row affected (0.011 sec)

MariaDB [WEEKTIGA]> INSERT INTO MODULEMPAT VALUES ('6094', 'Dimas', 'Magelang', '2005/12/23', 'L', '085900001115');
Query OK, 1 row affected (0.011 sec)

MariaDB [WEEKTIGA]> select * from MODULEMPAT;
+------+----------+--------------+---------------+---------------+--------------+
| NPM  | Nama     | Tempat_Lahir | Tanggal_Lahir | Jenis_Kelamin | No_HP        |
+------+----------+--------------+---------------+---------------+--------------+
| 6052 | Nayla    | Temanggung   | 2005-10-16    | P             | 085900001114 |
| 6091 | Narend   | Wonosobo     | 2007-11-02    | L             | 085901012005 |
| 6092 | Alvita   | Semarang     | 2007-06-28    | P             | 085901012006 |
| 6093 | Adhyasta | Jogja        | 2006-06-06    | L             | 085901012007 |
| 6094 | Dimas    | Magelang     | 2005-12-23    | L             | 085900001115 |
+------+----------+--------------+---------------+---------------+--------------+
5 rows in set (0.001 sec)

MariaDB [WEEKTIGA]> UPDATE `MODULEMPAT` SET `Nama` = 'Naren' WHERE NPM = '6091';
Query OK, 1 row affected (0.011 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [WEEKTIGA]> SELECT * FROM MODULEMPAT;
+------+----------+--------------+---------------+---------------+--------------+
| NPM  | Nama     | Tempat_Lahir | Tanggal_Lahir | Jenis_Kelamin | No_HP        |
+------+----------+--------------+---------------+---------------+--------------+
| 6052 | Nayla    | Temanggung   | 2005-10-16    | P             | 085900001114 |
| 6091 | Naren    | Wonosobo     | 2007-11-02    | L             | 085901012005 |
| 6092 | Alvita   | Semarang     | 2007-06-28    | P             | 085901012006 |
| 6093 | Adhyasta | Jogja        | 2006-06-06    | L             | 085901012007 |
| 6094 | Dimas    | Magelang     | 2005-12-23    | L             | 085900001115 |
+------+----------+--------------+---------------+---------------+--------------+
5 rows in set (0.001 sec)

MariaDB [WEEKTIGA]> UPDATE `MODULEMPAT` SET `Nama` = 'Zizi' WHERE NPM = '6092';
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [WEEKTIGA]> SELECT * FROM MODULEMPAT;
+------+----------+--------------+---------------+---------------+--------------+
| NPM  | Nama     | Tempat_Lahir | Tanggal_Lahir | Jenis_Kelamin | No_HP        |
+------+----------+--------------+---------------+---------------+--------------+
| 6052 | Nayla    | Temanggung   | 2005-10-16    | P             | 085900001114 |
| 6091 | Naren    | Wonosobo     | 2007-11-02    | L             | 085901012005 |
| 6092 | Zizi     | Semarang     | 2007-06-28    | P             | 085901012006 |
| 6093 | Adhyasta | Jogja        | 2006-06-06    | L             | 085901012007 |
| 6094 | Dimas    | Magelang     | 2005-12-23    | L             | 085900001115 |
+------+----------+--------------+---------------+---------------+--------------+
5 rows in set (0.001 sec)

MariaDB [WEEKTIGA]> DELETE FROM `MODULEMPAT` WHERE `NPM` = '6093';
Query OK, 1 row affected (0.011 sec)

MariaDB [WEEKTIGA]> SELECT * FROM MODULEMPAT;
+------+-------+--------------+---------------+---------------+--------------+
| NPM  | Nama  | Tempat_Lahir | Tanggal_Lahir | Jenis_Kelamin | No_HP        |
+------+-------+--------------+---------------+---------------+--------------+
| 6052 | Nayla | Temanggung   | 2005-10-16    | P             | 085900001114 |
| 6091 | Naren | Wonosobo     | 2007-11-02    | L             | 085901012005 |
| 6092 | Zizi  | Semarang     | 2007-06-28    | P             | 085901012006 |
| 6094 | Dimas | Magelang     | 2005-12-23    | L             | 085900001115 |
+------+-------+--------------+---------------+---------------+--------------+
4 rows in set (0.001 sec)

MariaDB [WEEKTIGA]> SELECT NPM, Nama, Jenis_Kelamin FROM MODULEMPAT WHERE Jenis_Kelamin = 'L';
+------+-------+---------------+
| NPM  | Nama  | Jenis_Kelamin |
+------+-------+---------------+
| 6091 | Naren | L             |
| 6094 | Dimas | L             |
+------+-------+---------------+
2 rows in set (0.001 sec)

MariaDB [WEEKTIGA]> SELECT NPM, Nama, No_HP, Jenis_Kelamin FROM MODULEMPAT WHERE Jenis_Kelamin = 'L';
+------+-------+--------------+---------------+
| NPM  | Nama  | No_HP        | Jenis_Kelamin |
+------+-------+--------------+---------------+
| 6091 | Naren | 085901012005 | L             |
| 6094 | Dimas | 085900001115 | L             |
+------+-------+--------------+---------------+
2 rows in set (0.001 sec)

MariaDB [WEEKTIGA]> exit
Bye

C:\xampp1\mysql\bin>mysqldump -u root -p WEEKTIGA > D:\TugasModul4_DBMS_2440506052.sql
Enter password:
