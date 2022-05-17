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
