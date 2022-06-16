# Repo for SQL course

# [Install MYSQL](https://database.guide/install-mysql-on-a-mac/)

`brew install mysql`

Reminder:
```
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot

To restart mysql after an upgrade:
  brew services restart mysql
Or, if you don't want/need a background service you can just run:
  /usr/local/opt/mysql/bin/mysqld_safe --datadir=/usr/local/var/mysql
```

Start MySQL

```
brew services start mysql
```

Should lead to: 

```
==> Successfully started `mysql` (label: homebrew.mxcl.mysql)
```

Connecting to MySQL
```
mysql -uroot
```

Should show:
```
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.29 Homebrew

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
```

In general: 

```
brew services stop mysql
brew services start mysql
brew services restart mysql
```
- [x] Lesson 1
- [x] Lesson 2
- [x] Lesson 3
- [x] Lesson 4
- [x] Lesson 5
- [x] Lesson 6
- [x] Lesson 7
- [x] Lesson 8
- [x] Lesson 9
- [x] Lesson 10
- [x] Lesson 11
- [x] Lesson 12
- [x] Lesson 13
- [x] Lesson 14
- [x] Lesson 15
- [x] Lesson 16
- [] Lesson 17
- [] Lesson 18
- [] Lesson 19
- [] Lesson 20
- [] Lesson 21
- [] Lesson 22
- [] Lesson 23
- [] Lesson 24
- [] Lesson 25
- [] Lesson 26
- [] Lesson 27
- [] Lesson 28
- [] Lesson 29
- [] Lesson 30
- [] Lesson 31
- [] Lesson 32
- [] Lesson 33
- [] Lesson 34
- [] Lesson 35
- [] Lesson 36
