CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	ItemID INTEGER(11) AUTO_INCREMENT NOT NULL,
  ProductName  VARCHAR(50) NOT NULL,
  DepartmentName VARCHAR(50) NOT NULL,
  Price DECIMAL(10,2),
	StockQuantity INTEGER(10),
  PRIMARY KEY (ItemID)
);

INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Mario Kart 8 Deluxe", "Games", 78.99, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Super Smash Bros Ultimate", "Games", 79.89, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("The Legend of Zelda", "Games", 79.98, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("New Super Mario Bro", "Games", 79.95, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Super Mario Party", "Games", 79.96, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Super Mario Odyssey", "Games", 79.98, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Super Mario Maker 2", "Games", 79.99, 1);
INSERT INTO products ( ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Donkey Kong Country", "Games", 79.96, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Yoshi's Crafted World", "Games", 79.96, 1);
INSERT INTO products (ProductName,DepartmentName,Price,StockQuantity)
VALUES ("Splatoon 2", "Games", 79.98, 1);

select * FROM products