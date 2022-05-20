# MySQL version 8 install and setup via brew

`brew install mysql`

Configuring MySQL service:

`brew tap homebrew/services`

Starting the service via `brew services start mysql`

`==> Successfully started `mysql` (label: homebrew.mxcl.mysql)`

Setting Admin pw:
`mysqladmin -u root password 'insert_admin_password'`

Throws a warning:
```
mysqladmin: [Warning] Using a password on the command line interface can be insecure.
Warning: Since password will be sent to server in plain text, use ssl connection to ensure password safety.
```

Works anyways...

`mysql -u root -p` prompts to enter the new pw as decided above

To make sure the login works via Sequel Pro we have to set: 
```
 ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'insert_admin_password';
```
Installing Sequel Pro via brew:

```
brew install --cask sequel-pro
```
