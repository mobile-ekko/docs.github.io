# Commands

### __Help__ { #Help data-toc-label="Help" }
``` sh
v99-cli help
```
Show all v99-cli support commands

### __Doctor__ { #Doctor data-toc-label="Doctor" }
``` sh
v99-cli doctor
```
Help to check your systems environment to run v99 CLI

### __Link__ { #Link data-toc-label="Link" }
```
v99-cli link
```
Open the browser that logged portal to authorize request login from V99 CLI

### __Login__ { #Login data-toc-label="Login" }
``` sh
v99-cli login # (1)!
```

1. Login by comand  
    ```
    v99-cli login -p="pass" -u="user"
    ```
    or
    ```
    v99-cli login --password="pass" --user="user"
    ```
 
Login by user name and password to get private token + secret key for v99 SDK