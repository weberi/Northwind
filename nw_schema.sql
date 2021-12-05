-- -----------------------------------------------------
-- nw - excerpt of northwind
-- -----------------------------------------------------
DROP SCHEMA nw;
CREATE SCHEMA nw;
USE  nw;
-- -----------------------------------------------------
-- Category
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS category (
  CategoryID INT NOT NULL AUTO_INCREMENT,
  CategoryName VARCHAR(15) NOT NULL,
  Description LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (CategoryID)
  )
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Customer
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS customer (
  CustomerID VARCHAR(5) NOT NULL,
  CompanyName VARCHAR(40) NOT NULL,
  ContactName VARCHAR(30) NULL DEFAULT NULL,
  ContactTitle VARCHAR(30) NULL DEFAULT NULL,
  Address VARCHAR(60) NULL DEFAULT NULL,
  City VARCHAR(15) NULL DEFAULT NULL,
  Region VARCHAR(15) NULL DEFAULT NULL,
  PostalCode VARCHAR(10) NULL DEFAULT NULL,
  Country VARCHAR(15) NULL DEFAULT NULL,
  Phone VARCHAR(24) NULL DEFAULT NULL,
  Fax VARCHAR(24) NULL DEFAULT NULL,
  Image LONGBLOB NULL DEFAULT NULL,
  ImageThumbnail LONGBLOB NULL DEFAULT NULL,
  PRIMARY KEY (CustomerID)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Employee
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS employee (
  EmployeeID INT NOT NULL AUTO_INCREMENT,
  LastName VARCHAR(20) NOT NULL,
  FirstName VARCHAR(10) NOT NULL,
  Title VARCHAR(30) NULL DEFAULT NULL,
  TitleOfCourtesy VARCHAR(25) NULL DEFAULT NULL,
  BirthDate DATETIME NULL DEFAULT NULL,
  HireDate DATETIME NULL DEFAULT NULL,
  Address VARCHAR(60) NULL DEFAULT NULL,
  City VARCHAR(15) NULL DEFAULT NULL,
  Region VARCHAR(15) NULL DEFAULT NULL,
  PostalCode VARCHAR(10) NULL DEFAULT NULL,
  Country VARCHAR(15) NULL DEFAULT NULL,
  HomePhone VARCHAR(24) NULL DEFAULT NULL,
  Extension VARCHAR(4) NULL DEFAULT NULL,
  Notes LONGTEXT NULL DEFAULT NULL,
  ReportsTo INT NULL DEFAULT NULL,
  PRIMARY KEY (EmployeeID)
  )
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Supplier
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS supplier (
  SupplierID INT NOT NULL AUTO_INCREMENT,
  CompanyName VARCHAR(40) NOT NULL,
  ContactName VARCHAR(30) NULL DEFAULT NULL,
  ContactTitle VARCHAR(30) NULL DEFAULT NULL,
  Address VARCHAR(60) NULL DEFAULT NULL,
  City VARCHAR(15) NULL DEFAULT NULL,
  Region VARCHAR(15) NULL DEFAULT NULL,
  PostalCode VARCHAR(10) NULL DEFAULT NULL,
  Country VARCHAR(15) NULL DEFAULT NULL,
  Phone VARCHAR(24) NULL DEFAULT NULL,
  Fax VARCHAR(24) NULL DEFAULT NULL,
  HomePage LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (SupplierID)
  )
ENGINE = InnoDB
AUTO_INCREMENT = 30
DEFAULT CHARACTER SET = utf8mb4;

-- ----------------------------
-- Shipper
-- ----------------------------
CREATE TABLE IF NOT EXISTS shipper (
  ShipperID int NOT NULL AUTO_INCREMENT,
  CompanyName varchar(40) NOT NULL,
  Phone varchar(24) DEFAULT NULL,
  PRIMARY KEY (ShipperID)
)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Product
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS product (
  ProductID INT NOT NULL AUTO_INCREMENT,
  ProductName VARCHAR(40) NOT NULL,
  SupplierID INT NULL DEFAULT NULL,
  CategoryID INT NULL DEFAULT NULL,
  QuantityPerUnit VARCHAR(20) NULL DEFAULT NULL,
  UnitPrice DECIMAL(19,4) NULL DEFAULT '0.0000',
  UnitsInStock INT NULL DEFAULT '0',
  UnitsOnOrder INT NULL DEFAULT '0',
  ReorderLevel INT NULL DEFAULT '0',
  Discontinued TINYINT NULL DEFAULT '0',
  PRIMARY KEY (ProductID),
  FOREIGN KEY (CategoryID) REFERENCES category(CategoryID ) ,
  FOREIGN KEY (SupplierID) REFERENCES supplier(SupplierID ) 
  )
ENGINE = InnoDB
AUTO_INCREMENT = 78
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Salesorder
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS salesorder (
  OrderID INT NOT NULL AUTO_INCREMENT,
  CustomerID VARCHAR(5) NULL DEFAULT NULL,
  EmployeeID INT NULL DEFAULT NULL,
  OrderDate DATETIME NULL DEFAULT NULL,
  RequiredDate DATETIME NULL DEFAULT NULL,
  ShippedDate DATETIME NULL DEFAULT NULL,
  ShipVia INT NULL DEFAULT NULL,
  Freight DECIMAL(19,4) NULL DEFAULT '0.0000',
  ShipName VARCHAR(40) NULL DEFAULT NULL,
  ShipAddress VARCHAR(60) NULL DEFAULT NULL,
  ShipCity VARCHAR(15) NULL DEFAULT NULL,
  ShipRegion VARCHAR(15) NULL DEFAULT NULL,
  ShipPostalCode VARCHAR(10) NULL DEFAULT NULL,
  ShipCountry VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (OrderID),
  FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID),
  FOREIGN KEY (EmployeeID) REFERENCES  employee(EmployeeID),
  FOREIGN KEY (ShipVia) REFERENCES  shipper(ShipperID)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- -----------------------------------------------------
-- Orderdetail
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS orderdetail
 (
  OrderID INT NOT NULL,
  DetailID INT NOT NULL,
  ProductID INT NULL DEFAULT NULL,
  UnitPrice DECIMAL(19,4) NULL DEFAULT '0.0000',
  Quantity DECIMAL(18,4) NOT NULL DEFAULT '0.0000',
  Discount DOUBLE NOT NULL DEFAULT '0',
  PRIMARY KEY (OrderID, DetailID),
FOREIGN KEY (OrderID)
    REFERENCES salesorder (OrderID),
FOREIGN KEY (ProductID)
    REFERENCES product (ProductID))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;




