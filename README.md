# A very light version of Northwind database for MySQL

For easier handling, the script is split into three files:
* nw_schema -  CREATE statements
* nw_data - INSERT statements for all tables expect orderdetails
* nw_orderdetail_data - INSERT statements for orderdetails

![nw model diagram](./nw_diagram.png)


The data come from https://documentation.alphasoftware.com/pages/GettingStarted/GettingStartedTutorials/Basic%20Tutorials/Northwind/northwindMySQL.xml
 

## Differences

* Tables are slightly renamed. 
* The Category and Employee tables come without the pictures.
* Orderdetail has got a new primary key.
* Database engine is InnoDB.
* Foreign keys are declared.
* Dates are updated to more recent years.

### Note

This Northwind version comprises more tables, coukd be added some time in the future: 
https://docs.yugabyte.com/latest/sample-data/northwind/