
-- Create database
CREATE DATABASE InventoryDB_Large;
GO

USE InventoryDB_Large;
GO

-- Create tables
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100),
    Category NVARCHAR(50),
    UnitPrice DECIMAL(10, 2),
    UnitsInStock INT
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY IDENTITY(1,1),
    SupplierName NVARCHAR(100),
    ContactName NVARCHAR(100),
    Country NVARCHAR(50)
);

CREATE TABLE Shipments (
    ShipmentID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT,
    SupplierID INT,
    Quantity INT,
    ShipmentDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

INSERT INTO Suppliers (SupplierName, ContactName, Country) VALUES
('TechSource Inc.', 'Alice Johnson', 'USA');

INSERT INTO Suppliers (SupplierName, ContactName, Country) VALUES
('FurniPro Ltd.', 'Bob Smith', 'Germany');

INSERT INTO Suppliers (SupplierName, ContactName, Country) VALUES
('Stationery World', 'Charlie Lee', 'China');

INSERT INTO Suppliers (SupplierName, ContactName, Country) VALUES
('Global Supplies', 'Diana Carter', 'UK');

INSERT INTO Suppliers (SupplierName, ContactName, Country) VALUES
('ElectroHub', 'Edward Kim', 'France');

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 1', 'Electronics', 706.36, 307);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 2', 'Furniture', 450.32, 352);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 3', 'Electronics', 418.99, 343);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 4', 'Furniture', 353.33, 307);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 5', 'Stationery', 813.05, 500);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 6', 'Stationery', 47.75, 57);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 7', 'Electronics', 628.37, 313);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 8', 'Furniture', 779.57, 293);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 9', 'Stationery', 221.46, 44);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 10', 'Furniture', 1136.09, 240);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 11', 'Furniture', 316.03, 470);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 12', 'Furniture', 688.1, 349);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 13', 'Electronics', 1016.06, 313);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 14', 'Stationery', 684.74, 113);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 15', 'Furniture', 900.22, 280);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 16', 'Stationery', 244.78, 93);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 17', 'Furniture', 1122.03, 255);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 18', 'Stationery', 24.77, 83);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 19', 'Electronics', 905.22, 239);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 20', 'Electronics', 996.68, 438);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 21', 'Stationery', 934.15, 330);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 22', 'Stationery', 327.96, 62);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 23', 'Stationery', 1088.43, 202);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 24', 'Stationery', 112.71, 418);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 25', 'Furniture', 626.38, 444);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 26', 'Furniture', 31.58, 203);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 27', 'Electronics', 452.36, 369);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 28', 'Stationery', 67.02, 281);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 29', 'Electronics', 442.97, 268);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 30', 'Electronics', 1061.78, 468);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 31', 'Electronics', 193.62, 71);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 32', 'Electronics', 205.86, 418);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 33', 'Stationery', 1000.13, 211);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 34', 'Stationery', 623.57, 93);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 35', 'Stationery', 1147.17, 56);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 36', 'Electronics', 40.1, 230);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 37', 'Stationery', 26.8, 154);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 38', 'Electronics', 436.28, 185);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 39', 'Electronics', 863.59, 485);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 40', 'Stationery', 618.82, 45);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 41', 'Stationery', 286.89, 218);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 42', 'Furniture', 1156.86, 98);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 43', 'Electronics', 3.76, 35);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 44', 'Electronics', 875.7, 431);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 45', 'Furniture', 500.27, 451);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 46', 'Stationery', 629.08, 420);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 47', 'Electronics', 460.49, 143);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 48', 'Electronics', 880.31, 473);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 49', 'Furniture', 79.0, 262);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 50', 'Furniture', 105.95, 443);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 51', 'Furniture', 675.64, 37);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 52', 'Stationery', 998.98, 19);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 53', 'Stationery', 202.08, 136);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 54', 'Electronics', 608.95, 341);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 55', 'Stationery', 73.43, 199);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 56', 'Stationery', 808.38, 46);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 57', 'Electronics', 497.88, 78);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 58', 'Furniture', 1084.87, 186);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 59', 'Stationery', 749.94, 251);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 60', 'Furniture', 1001.93, 294);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 61', 'Stationery', 688.72, 339);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 62', 'Electronics', 107.64, 31);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 63', 'Stationery', 304.41, 104);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 64', 'Furniture', 593.39, 129);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 65', 'Stationery', 673.8, 402);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 66', 'Furniture', 816.91, 208);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 67', 'Furniture', 58.73, 288);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 68', 'Electronics', 549.93, 222);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 69', 'Electronics', 661.86, 60);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 70', 'Stationery', 863.49, 343);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 71', 'Stationery', 830.06, 199);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 72', 'Furniture', 673.13, 358);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 73', 'Electronics', 749.53, 145);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 74', 'Furniture', 453.15, 219);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 75', 'Furniture', 398.78, 242);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 76', 'Stationery', 117.04, 463);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 77', 'Stationery', 504.39, 142);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 78', 'Electronics', 590.55, 298);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Monitor Model 79', 'Furniture', 620.4, 255);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 80', 'Stationery', 1034.42, 278);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 81', 'Furniture', 500.51, 378);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 82', 'Furniture', 719.14, 119);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 83', 'Furniture', 1023.25, 253);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 84', 'Stationery', 161.45, 177);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Lamp Model 85', 'Stationery', 484.52, 338);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 86', 'Electronics', 416.81, 281);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 87', 'Furniture', 35.05, 454);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 88', 'Stationery', 683.92, 103);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Mouse Model 89', 'Stationery', 1182.84, 391);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Laptop Model 90', 'Electronics', 1052.54, 146);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 91', 'Furniture', 392.97, 59);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Desk Model 92', 'Stationery', 7.62, 350);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 93', 'Stationery', 985.06, 118);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 94', 'Furniture', 54.64, 430);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Keyboard Model 95', 'Electronics', 589.21, 243);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Office Chair Model 96', 'Electronics', 817.02, 111);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 97', 'Stationery', 126.12, 134);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Pen Model 98', 'Electronics', 40.39, 427);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('Notebook Model 99', 'Stationery', 131.96, 144);

INSERT INTO Products (ProductName, Category, UnitPrice, UnitsInStock) VALUES
('USB Cable Model 100', 'Furniture', 767.53, 92);

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 2, 97, '2024-05-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 1, 92, '2024-02-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 2, 9, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 5, 55, '2024-12-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(57, 4, 19, '2024-07-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 5, 76, '2024-11-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 1, 90, '2024-12-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 2, 74, '2024-02-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 3, 2, '2024-08-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 4, 49, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 4, 27, '2024-12-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 1, 72, '2024-03-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 4, 89, '2024-05-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 3, 87, '2024-05-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 5, 72, '2024-10-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 2, 4, '2024-05-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 1, 82, '2024-06-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 1, 61, '2024-01-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 3, 48, '2024-12-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 2, 28, '2024-04-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(32, 1, 5, '2024-04-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 2, 66, '2024-05-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 2, 44, '2024-02-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 4, 77, '2024-04-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 2, 12, '2024-01-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 4, 10, '2024-04-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 3, 90, '2024-08-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 4, 16, '2024-06-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 2, 7, '2024-12-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 1, 35, '2024-07-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 4, 13, '2024-01-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 4, 3, '2024-03-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 1, 12, '2024-08-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 4, 14, '2024-03-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 2, 89, '2024-01-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 3, 41, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 3, 20, '2024-01-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 3, 19, '2024-03-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 2, 17, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 2, 17, '2024-06-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 4, 1, '2024-12-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 3, 22, '2024-03-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 3, 6, '2024-10-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 4, 16, '2024-09-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 3, 39, '2024-02-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 4, 68, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 5, 68, '2024-07-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 3, 36, '2024-10-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(30, 5, 99, '2024-12-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 2, 94, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 2, 96, '2024-08-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 4, 67, '2024-03-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 2, 86, '2024-11-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 4, 16, '2024-05-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 4, 29, '2024-04-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 2, 54, '2024-01-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 5, 22, '2024-02-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 5, 13, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 2, 17, '2024-01-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 1, 51, '2024-11-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 2, 74, '2024-12-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 5, 49, '2024-07-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 3, 45, '2024-09-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 2, 24, '2024-10-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 5, 88, '2024-01-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 1, 40, '2024-11-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 1, 77, '2024-11-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 3, 97, '2024-03-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 3, 47, '2024-09-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 3, 34, '2024-11-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 3, 53, '2024-12-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 4, 3, '2024-05-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(57, 2, 97, '2024-06-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 3, 54, '2024-03-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 4, 30, '2024-10-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 3, 79, '2024-11-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 3, 12, '2024-12-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 5, 71, '2024-02-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 2, 1, '2024-09-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 4, 36, '2024-06-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 3, 9, '2024-06-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 3, 60, '2024-07-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 3, 42, '2024-01-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 4, 14, '2024-02-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 5, 57, '2024-08-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 1, 6, '2024-04-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 4, 39, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 90, '2024-08-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 2, 46, '2024-10-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 2, 82, '2024-11-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 2, 43, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 4, 64, '2024-12-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 2, 94, '2024-03-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 4, 30, '2024-01-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 5, 91, '2024-05-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 4, 59, '2024-09-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 4, 17, '2024-04-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 3, 54, '2024-06-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(28, 5, 39, '2024-07-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 5, 82, '2024-03-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 5, 84, '2024-10-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 2, 72, '2024-05-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 1, 1, '2024-07-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 4, 64, '2024-05-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 3, 87, '2024-11-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 5, 10, '2024-01-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 1, 28, '2024-07-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 1, 53, '2024-01-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 1, 28, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 1, 50, '2024-03-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 3, 59, '2024-12-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(26, 2, 67, '2024-11-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 5, 18, '2024-11-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 2, 22, '2024-12-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 3, 47, '2024-10-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(32, 1, 59, '2024-02-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(40, 4, 87, '2024-04-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 1, 22, '2024-06-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 1, 21, '2024-02-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 1, 73, '2024-02-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 2, 5, '2024-09-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 4, 59, '2024-07-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 5, 65, '2024-10-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 4, 19, '2024-01-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 2, 12, '2024-05-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 2, 37, '2024-11-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 3, 2, '2024-09-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 4, 75, '2024-10-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 1, 65, '2024-12-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 5, 75, '2024-08-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 4, 72, '2024-08-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 4, 86, '2024-06-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 3, 61, '2024-08-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 5, 6, '2024-06-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 1, 97, '2024-11-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 5, 91, '2024-06-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 5, 37, '2024-12-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 4, 99, '2024-07-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 5, 9, '2024-04-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 4, 20, '2024-07-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(57, 5, 100, '2024-03-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 5, '2024-03-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 2, 9, '2024-11-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 5, 4, '2024-01-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 3, 89, '2024-06-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 5, 80, '2024-04-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 3, 46, '2024-04-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 4, 76, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 2, 8, '2024-12-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 2, 89, '2024-08-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 1, 1, '2024-06-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(40, 1, 33, '2024-03-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 5, 13, '2024-04-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 5, 31, '2024-09-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 1, 23, '2024-11-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 4, 96, '2024-07-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 1, 51, '2024-06-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 36, '2024-10-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 3, 27, '2024-02-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 5, 43, '2024-04-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 2, 83, '2024-04-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(98, 3, 83, '2024-04-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 2, 30, '2024-07-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 4, 30, '2024-08-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(32, 5, 6, '2024-09-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 5, 30, '2024-11-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 4, 33, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 5, 51, '2024-08-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 1, 55, '2024-12-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 5, 57, '2024-07-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 3, 65, '2024-12-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 92, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 5, 90, '2024-03-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 1, 82, '2024-12-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 3, 42, '2024-11-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 4, 32, '2024-02-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 1, 98, '2024-10-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 2, 53, '2024-04-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 4, 26, '2024-12-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 1, 27, '2024-04-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 5, 92, '2024-11-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 1, 83, '2024-01-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 2, 83, '2024-09-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 5, 40, '2024-12-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 5, 17, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 5, 35, '2024-04-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 5, 94, '2024-02-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 1, 94, '2024-01-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 1, 97, '2024-05-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 4, 43, '2024-01-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 4, 65, '2024-12-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 5, 40, '2024-05-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 3, 96, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 1, 18, '2024-07-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 4, 88, '2024-01-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 3, 40, '2024-09-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 3, 31, '2024-06-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 5, 9, '2024-11-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 4, 100, '2024-03-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 4, 12, '2024-08-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 4, 53, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 4, 5, '2024-03-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 5, 59, '2024-01-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 5, 70, '2024-09-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 3, 33, '2024-09-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 5, 6, '2024-04-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 2, 51, '2024-02-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 4, 100, '2024-09-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 3, 5, '2024-10-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 5, 80, '2024-04-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 5, 72, '2024-04-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 3, 30, '2024-01-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 5, 49, '2024-07-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 5, 29, '2024-01-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 5, 59, '2024-11-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 4, 36, '2024-03-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 3, 16, '2024-01-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 3, 41, '2024-03-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 5, 14, '2024-08-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 5, 94, '2024-10-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 5, 31, '2024-10-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 1, 39, '2024-08-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 3, 23, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 4, 100, '2024-12-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 2, 3, '2024-04-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 4, 76, '2024-06-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(11, 2, 73, '2024-08-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 4, 18, '2024-08-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 1, 64, '2024-09-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 1, 67, '2024-10-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 3, 73, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 4, 94, '2024-01-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 5, 11, '2024-03-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 2, 63, '2024-07-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 2, 73, '2024-07-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 2, 47, '2024-10-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 5, 4, '2024-01-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 5, 44, '2024-02-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 1, 9, '2024-04-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 3, 90, '2024-01-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 1, 8, '2024-02-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 1, 86, '2024-11-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 4, 57, '2024-08-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 3, 33, '2024-02-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 5, 84, '2024-01-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 2, 15, '2024-06-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 3, 60, '2024-04-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 2, 23, '2024-12-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 1, 42, '2024-05-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(98, 1, 53, '2024-07-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 3, 73, '2024-08-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 3, 31, '2024-07-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 2, 86, '2024-06-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 4, 31, '2024-10-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 3, 19, '2024-07-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 4, 89, '2024-01-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 2, 58, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 4, 42, '2024-07-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 19, '2024-03-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 3, 5, '2024-11-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 4, 33, '2024-03-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 1, 47, '2024-12-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 5, 33, '2024-05-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 5, 34, '2024-07-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 3, 76, '2024-07-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 5, 76, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 1, 43, '2024-10-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 4, 6, '2024-03-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 5, 89, '2024-05-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 1, 20, '2024-01-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 5, 61, '2024-10-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 4, 11, '2024-03-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 4, 66, '2024-06-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 5, 34, '2024-12-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 1, 16, '2024-10-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 4, 17, '2024-08-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 4, 97, '2024-03-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 3, 16, '2024-10-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 2, 71, '2024-05-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 1, 32, '2024-03-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 3, 36, '2024-02-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 4, 4, '2024-12-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 4, 16, '2024-03-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 1, 76, '2024-06-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 4, 37, '2024-02-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 1, 21, '2024-02-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(32, 3, 31, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 3, 99, '2024-06-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 5, 20, '2024-03-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 2, 92, '2024-01-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 5, 59, '2024-07-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 2, 41, '2024-09-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 1, 33, '2024-06-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 1, 48, '2024-04-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 1, 97, '2024-01-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 5, 5, '2024-07-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 4, 27, '2024-06-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 1, 57, '2024-02-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(30, 4, 32, '2024-06-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 5, 55, '2024-06-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 1, 21, '2024-11-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 3, 61, '2024-04-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 4, 8, '2024-01-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 2, 99, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 88, '2024-11-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 5, 81, '2024-11-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 3, 86, '2024-11-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 2, 20, '2024-09-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 2, 11, '2024-05-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 3, 5, '2024-05-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 5, 26, '2024-10-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 1, 75, '2024-11-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 4, 37, '2024-08-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 1, 57, '2024-01-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 3, 18, '2024-08-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 5, 17, '2024-09-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 1, 6, '2024-11-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 1, 32, '2024-07-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 3, 100, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 1, 32, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 1, 41, '2024-08-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 2, 81, '2024-08-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 4, 49, '2024-09-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 4, 65, '2024-08-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 1, 7, '2024-12-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 41, '2024-08-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 3, 40, '2024-04-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 2, 32, '2024-09-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 1, 49, '2024-10-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 2, 19, '2024-09-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 1, 69, '2024-10-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 2, 80, '2024-11-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 5, 56, '2024-07-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 5, 82, '2024-03-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 1, 100, '2024-03-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 4, 63, '2024-05-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 4, 40, '2024-03-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 5, 70, '2024-02-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 1, 49, '2024-09-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 5, 10, '2024-09-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 1, 64, '2024-12-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 1, 53, '2024-09-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 53, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 82, '2024-01-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 2, 19, '2024-06-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 4, 15, '2024-10-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 5, 47, '2024-09-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 2, 53, '2024-04-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 4, 40, '2024-09-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 2, 69, '2024-01-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 5, 77, '2024-02-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 4, 90, '2024-05-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 1, 68, '2024-08-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 3, 88, '2024-11-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 2, 75, '2024-08-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 1, 4, '2024-08-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 5, 49, '2024-11-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 1, 29, '2024-02-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 1, 15, '2024-11-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 2, 73, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 1, 87, '2024-01-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 4, 39, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 1, 89, '2024-07-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 4, 75, '2024-04-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 2, 67, '2024-02-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 2, 59, '2024-01-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 4, 43, '2024-11-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 4, 91, '2024-04-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 2, 24, '2024-03-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(26, 1, 2, '2024-07-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 5, 22, '2024-03-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 4, 2, '2024-04-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 3, 43, '2024-09-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 1, 35, '2024-10-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 1, 62, '2024-02-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 2, 64, '2024-02-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 3, 63, '2024-11-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 4, 31, '2024-01-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 2, 49, '2024-07-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 1, 92, '2024-09-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 2, 1, '2024-08-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 2, 35, '2024-10-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 5, 13, '2024-04-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 4, 68, '2024-07-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 5, 35, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 1, 37, '2024-07-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 3, 5, '2024-07-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 45, '2024-03-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 2, 63, '2024-08-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 3, 46, '2024-02-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 4, 52, '2024-08-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 2, 63, '2024-07-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 1, 86, '2024-10-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 5, 60, '2024-10-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 5, 74, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 1, 97, '2024-03-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 3, 38, '2024-09-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 1, 17, '2024-01-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 2, 42, '2024-09-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 1, 99, '2024-03-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 1, 4, '2024-01-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 3, 27, '2024-05-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 3, 21, '2024-05-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 2, 88, '2024-04-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 3, 7, '2024-04-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(57, 2, 63, '2024-05-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 36, '2024-03-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 2, 66, '2024-01-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 5, 49, '2024-03-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 4, 58, '2024-06-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 5, 17, '2024-01-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 4, 34, '2024-10-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 3, 100, '2024-12-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 2, 9, '2024-11-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(40, 2, 96, '2024-08-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 2, 67, '2024-07-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(26, 4, 2, '2024-09-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 5, 46, '2024-02-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 1, 96, '2024-04-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 30, '2024-12-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 1, 38, '2024-01-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 3, 51, '2024-11-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 2, 59, '2024-12-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 1, 84, '2024-10-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 4, 7, '2024-03-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 2, 72, '2024-06-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 5, 66, '2024-11-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 4, 49, '2024-05-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 3, 7, '2024-01-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 2, 13, '2024-07-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 4, 52, '2024-08-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 2, 25, '2024-08-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 1, 37, '2024-05-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 3, 16, '2024-10-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 1, 13, '2024-08-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 3, 4, '2024-02-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 3, 9, '2024-11-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 3, 89, '2024-05-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 2, 44, '2024-09-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 3, 98, '2024-08-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 3, 1, '2024-07-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(98, 5, 61, '2024-10-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 3, 48, '2024-11-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 2, 71, '2024-06-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 2, 33, '2024-10-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 4, 56, '2024-03-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 4, 66, '2024-03-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 2, 31, '2024-11-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 2, 35, '2024-03-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(40, 2, 92, '2024-12-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 2, 17, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 4, 99, '2024-10-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 3, 98, '2024-11-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 4, 39, '2024-10-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 1, 23, '2024-08-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 5, 10, '2024-01-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 3, 19, '2024-09-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 1, 40, '2024-07-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 5, 8, '2024-11-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 1, 55, '2024-08-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 4, 97, '2024-03-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 5, 69, '2024-05-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 1, 57, '2024-01-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 2, 57, '2024-05-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 3, 25, '2024-08-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 4, 8, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 4, 59, '2024-07-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 2, 72, '2024-03-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 4, 23, '2024-04-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 1, 95, '2024-11-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 3, 38, '2024-03-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 1, 50, '2024-09-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 1, 58, '2024-01-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 5, 53, '2024-11-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 3, 93, '2024-04-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(84, 2, 63, '2024-06-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 4, 86, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 1, 34, '2024-02-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 5, 7, '2024-10-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 3, 34, '2024-10-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 3, 64, '2024-08-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 2, 59, '2024-11-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 5, 13, '2024-12-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 1, 84, '2024-03-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 62, '2024-05-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 5, 69, '2024-09-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 3, 74, '2024-01-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 1, 37, '2024-04-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 5, 46, '2024-08-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(26, 1, 82, '2024-10-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 1, 16, '2024-06-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 3, 82, '2024-01-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 1, 49, '2024-06-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 2, 30, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 5, 87, '2024-03-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 1, 67, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 4, 63, '2024-05-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 4, 3, '2024-10-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 4, 51, '2024-01-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 3, 78, '2024-04-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 1, 49, '2024-04-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 4, 5, '2024-10-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 2, 61, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 2, 77, '2024-01-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 44, '2024-06-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(40, 4, 5, '2024-07-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 3, 3, '2024-11-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 4, 1, '2024-12-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 3, 7, '2024-05-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 5, 76, '2024-05-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 5, 3, '2024-07-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 4, 92, '2024-09-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 2, 75, '2024-07-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 3, 16, '2024-08-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 1, 31, '2024-05-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 2, 20, '2024-06-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 4, 98, '2024-11-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 1, 48, '2024-02-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 1, 68, '2024-04-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 1, 76, '2024-08-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 4, 49, '2024-11-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 2, 57, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 3, 98, '2024-09-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 1, 18, '2024-04-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 4, 30, '2024-11-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 4, 58, '2024-04-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 1, 25, '2024-10-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 4, 86, '2024-02-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 4, 62, '2024-10-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 4, 18, '2024-07-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 5, 88, '2024-08-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 4, 100, '2024-02-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 1, 48, '2024-09-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 1, 99, '2024-01-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 2, 97, '2024-12-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 2, 68, '2024-03-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 2, 66, '2024-05-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 2, 55, '2024-02-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 4, 8, '2024-10-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 1, 59, '2024-03-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 3, 25, '2024-07-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 3, 90, '2024-05-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 4, 38, '2024-10-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 3, 30, '2024-12-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 2, 96, '2024-07-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 3, 68, '2024-02-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 5, 44, '2024-06-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 5, 10, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(20, 2, 94, '2024-05-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 1, 13, '2024-10-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(1, 1, 37, '2024-09-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 4, 23, '2024-11-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 2, 73, '2024-03-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 2, 63, '2024-11-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 3, 88, '2024-05-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 1, 38, '2024-05-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 4, 12, '2024-04-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 1, 45, '2024-02-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 3, 77, '2024-10-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 79, '2024-07-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 2, 84, '2024-09-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 4, 2, '2024-03-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 1, 33, '2024-08-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 2, 66, '2024-01-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 2, 60, '2024-06-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 3, 36, '2024-11-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 5, 47, '2024-03-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 3, 70, '2024-04-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 4, 85, '2024-01-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 4, 75, '2024-08-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 4, 53, '2024-01-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 3, 74, '2024-08-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 1, 54, '2024-04-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 3, 50, '2024-06-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 5, 44, '2024-01-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 3, 100, '2024-08-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 5, 49, '2024-07-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 2, 87, '2024-02-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 1, 61, '2024-02-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 4, 34, '2024-06-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 4, 77, '2024-07-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 2, 100, '2024-09-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 1, 46, '2024-01-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 2, 52, '2024-04-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 2, 1, '2024-02-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 5, 79, '2024-12-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 5, 9, '2024-03-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 2, 25, '2024-12-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 1, 82, '2024-06-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 5, 5, '2024-11-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 1, 39, '2024-09-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 5, 88, '2024-06-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 3, 6, '2024-10-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 4, 98, '2024-01-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 3, 33, '2024-05-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 2, 38, '2024-10-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 5, 1, '2024-01-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 2, 30, '2024-06-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 5, 15, '2024-09-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 2, 14, '2024-04-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 4, 74, '2024-03-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(98, 2, 21, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 3, 50, '2024-08-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 3, 17, '2024-05-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 3, 80, '2024-11-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 3, 97, '2024-08-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 5, 76, '2024-03-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 5, 11, '2024-10-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 1, 93, '2024-03-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 4, 8, '2024-08-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 5, 94, '2024-04-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 2, 91, '2024-05-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 1, 64, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 3, 59, '2024-02-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 4, 18, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 2, 5, '2024-02-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 4, 69, '2024-10-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 3, 88, '2024-09-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 1, 19, '2024-08-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 4, 12, '2024-03-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 4, 21, '2024-12-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 5, 67, '2024-02-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 2, 28, '2024-10-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 5, 21, '2024-02-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 3, 64, '2024-09-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 5, 5, '2024-03-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 3, 12, '2024-12-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 1, 5, '2024-09-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 2, 98, '2024-08-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 3, 69, '2024-07-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 3, 33, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 5, 71, '2024-04-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 5, 12, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 5, 10, '2024-01-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 4, 65, '2024-02-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(30, 4, 84, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 3, 55, '2024-05-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 1, 2, '2024-09-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 2, 28, '2024-10-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 2, 24, '2024-04-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 4, 81, '2024-07-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 1, 99, '2024-10-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 1, 55, '2024-12-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 5, 92, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 3, 36, '2024-12-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 1, 30, '2024-08-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 4, 19, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 4, 63, '2024-06-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 3, 8, '2024-03-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(28, 4, 91, '2024-08-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 4, 91, '2024-10-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 5, 6, '2024-11-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 5, 53, '2024-10-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 2, 21, '2024-09-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(56, 2, 27, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 1, 89, '2024-12-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 1, 22, '2024-07-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 4, 76, '2024-11-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 1, 95, '2024-08-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 1, 45, '2024-05-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 2, 27, '2024-03-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 1, 36, '2024-01-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 3, 60, '2024-04-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 3, 84, '2024-01-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 5, 70, '2024-08-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 3, 93, '2024-03-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 5, 8, '2024-03-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 5, 94, '2024-11-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 5, 31, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 2, 39, '2024-12-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(78, 1, 82, '2024-06-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 4, 54, '2024-08-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 1, 14, '2024-05-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 4, 46, '2024-04-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 12, '2024-07-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 4, 77, '2024-05-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 3, 98, '2024-09-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 2, 99, '2024-07-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(26, 1, 6, '2024-12-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 5, 14, '2024-05-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 3, 41, '2024-01-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 1, 79, '2024-12-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 5, 71, '2024-10-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 2, 90, '2024-08-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 1, 70, '2024-06-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 5, 53, '2024-07-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 1, 31, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 3, 37, '2024-11-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 5, 38, '2024-03-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 2, 68, '2024-01-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 1, 77, '2024-02-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 3, 9, '2024-08-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 4, 99, '2024-01-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 4, 75, '2024-12-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 4, 50, '2024-12-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(62, 2, 26, '2024-09-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 4, 47, '2024-05-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 2, 21, '2024-11-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 2, 64, '2024-08-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 4, 62, '2024-06-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 4, 50, '2024-05-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 5, 88, '2024-12-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(30, 1, 65, '2024-08-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 5, 55, '2024-11-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 5, 38, '2024-04-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 5, 52, '2024-09-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 4, 18, '2024-12-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 2, 20, '2024-04-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 3, 11, '2024-01-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 5, 51, '2024-11-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 4, 88, '2024-02-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 1, 1, '2024-04-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 4, 72, '2024-01-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 2, 27, '2024-05-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 2, 67, '2024-01-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(39, 1, 5, '2024-08-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 3, 15, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 4, 54, '2024-04-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 2, 4, '2024-10-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 3, 20, '2024-06-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 2, 59, '2024-09-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 2, 18, '2024-03-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 1, 41, '2024-04-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 2, 43, '2024-02-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 5, 36, '2024-04-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 2, 20, '2024-05-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 3, 64, '2024-05-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 1, 28, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 1, 17, '2024-03-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 5, 71, '2024-07-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 4, 52, '2024-11-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 5, 4, '2024-10-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 4, 33, '2024-01-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(95, 2, 57, '2024-12-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 4, 93, '2024-11-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 2, 49, '2024-02-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 4, 51, '2024-08-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 1, 41, '2024-06-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 3, 18, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 5, 63, '2024-08-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 4, 27, '2024-01-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 5, 41, '2024-11-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 4, 62, '2024-06-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 1, 26, '2024-11-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 5, 54, '2024-11-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 3, 85, '2024-02-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 3, 81, '2024-09-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 3, 86, '2024-04-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 1, 14, '2024-05-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 2, 52, '2024-01-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 3, 39, '2024-09-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 2, 48, '2024-12-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 4, 51, '2024-07-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 3, 93, '2024-03-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 2, 14, '2024-03-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(27, 2, 17, '2024-03-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 4, 1, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 2, 88, '2024-12-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 1, 24, '2024-10-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(98, 3, 30, '2024-11-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 4, 14, '2024-07-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 3, 74, '2024-03-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(71, 3, 55, '2024-01-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 3, 63, '2024-10-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 3, 53, '2024-05-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 1, 67, '2024-06-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 4, 13, '2024-07-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 5, 19, '2024-11-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 1, 14, '2024-03-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 1, 49, '2024-02-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 3, 97, '2024-11-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 5, 47, '2024-06-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 4, 5, '2024-07-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(52, 3, 99, '2024-10-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 3, 69, '2024-06-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 5, 100, '2024-06-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 5, 87, '2024-06-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(25, 2, 7, '2024-05-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(11, 2, 3, '2024-06-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 2, 97, '2024-08-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 2, 100, '2024-11-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 3, 53, '2024-02-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 3, 40, '2024-10-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(37, 5, 93, '2024-11-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 5, 15, '2024-03-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 5, 90, '2024-03-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 3, 10, '2024-01-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 4, 36, '2024-05-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 3, 14, '2024-08-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 1, 91, '2024-04-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 5, 8, '2024-01-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 36, '2024-11-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 94, '2024-09-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 2, 64, '2024-11-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 5, 13, '2024-12-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 4, 67, '2024-04-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 4, 41, '2024-01-15');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 2, 38, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 5, 98, '2024-09-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 4, 61, '2024-01-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 3, 77, '2024-11-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 2, 7, '2024-09-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(20, 1, 97, '2024-12-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(54, 3, 96, '2024-03-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 2, 81, '2024-06-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 4, 36, '2024-08-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 2, 72, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 73, '2024-09-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 1, 92, '2024-07-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 4, 25, '2024-05-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 4, 24, '2024-11-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 5, 40, '2024-03-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(31, 4, 63, '2024-10-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(74, 4, 6, '2024-02-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 1, 2, '2024-09-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 2, 67, '2024-05-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 5, 98, '2024-02-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 3, 92, '2024-09-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 4, 42, '2024-07-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 1, 10, '2024-05-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 1, 27, '2024-06-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(16, 1, 15, '2024-03-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(47, 1, 29, '2024-08-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 5, 45, '2024-12-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 1, 26, '2024-01-10');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 4, 69, '2024-12-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 4, 38, '2024-02-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(8, 5, 74, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(50, 1, 84, '2024-10-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(36, 4, 11, '2024-04-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(84, 3, 61, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(84, 1, 74, '2024-01-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 3, 92, '2024-07-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 1, 31, '2024-03-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 50, '2024-04-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 4, 47, '2024-06-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(24, 3, 68, '2024-04-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 5, 79, '2024-02-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 5, 45, '2024-06-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 3, 55, '2024-04-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 5, 78, '2024-05-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(16, 5, 79, '2024-05-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 2, 50, '2024-03-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 3, 88, '2024-09-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 5, 33, '2024-12-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 1, 45, '2024-03-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(11, 5, 33, '2024-11-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(69, 4, 36, '2024-07-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(33, 2, 87, '2024-02-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 5, 15, '2024-05-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 1, 71, '2024-02-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 4, 19, '2024-07-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 4, 46, '2024-08-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 3, 77, '2024-04-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(16, 1, 51, '2024-03-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 3, 62, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 1, 75, '2024-11-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(61, 5, 88, '2024-05-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 2, 41, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 3, 63, '2024-03-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 5, 21, '2024-04-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 4, 8, '2024-07-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(84, 4, 75, '2024-11-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 3, 71, '2024-06-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 4, 33, '2024-08-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(86, 3, 14, '2024-09-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(41, 5, 45, '2024-08-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 5, 94, '2024-10-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(6, 2, 80, '2024-08-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(48, 4, 100, '2024-06-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 2, 99, '2024-11-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 5, 83, '2024-07-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(80, 4, 10, '2024-02-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(11, 3, 40, '2024-11-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 1, 97, '2024-01-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 1, 7, '2024-12-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 4, 13, '2024-03-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 2, 28, '2024-08-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(57, 2, 100, '2024-09-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 2, 82, '2024-10-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 3, 32, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 2, 39, '2024-11-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 3, 2, '2024-07-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(53, 3, 37, '2024-03-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 4, 85, '2024-02-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 3, 74, '2024-10-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 4, 100, '2024-12-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(21, 5, 3, '2024-05-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(35, 1, 65, '2024-07-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 2, 22, '2024-11-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(14, 4, 95, '2024-02-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(3, 5, 27, '2024-09-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(84, 5, 39, '2024-01-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(92, 4, 82, '2024-03-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(70, 4, 93, '2024-01-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 3, 89, '2024-10-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(40, 1, 21, '2024-09-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 2, 94, '2024-01-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(20, 5, 88, '2024-10-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 1, 61, '2024-11-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 1, 69, '2024-08-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(65, 3, 62, '2024-07-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 3, 25, '2024-06-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 3, 96, '2024-01-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 1, 93, '2024-07-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 4, 52, '2024-03-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(100, 1, 45, '2024-08-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(88, 5, 27, '2024-08-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 4, 48, '2024-12-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(2, 3, 66, '2024-05-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 2, 46, '2024-03-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 1, 73, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(73, 3, 11, '2024-04-01');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(72, 3, 32, '2024-06-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 4, 92, '2024-01-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(32, 5, 39, '2024-03-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 4, 89, '2024-10-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 3, 91, '2024-07-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(96, 1, 88, '2024-05-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(20, 1, 3, '2024-05-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 3, 50, '2024-11-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(94, 5, 64, '2024-12-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(84, 4, 18, '2024-08-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(29, 4, 83, '2024-04-23');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 1, 31, '2024-11-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 4, 37, '2024-11-11');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(13, 4, 74, '2024-04-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(68, 2, 61, '2024-02-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 1, 19, '2024-07-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(91, 5, 61, '2024-12-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 4, 49, '2024-10-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 2, 68, '2024-04-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 1, 62, '2024-09-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(22, 1, 5, '2024-05-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 5, 11, '2024-08-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 4, 17, '2024-01-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 4, 30, '2024-07-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 5, 4, '2024-07-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(77, 5, 37, '2024-02-04');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(9, 1, 68, '2024-10-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(76, 5, 98, '2024-02-17');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 4, 93, '2024-03-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 4, 49, '2024-07-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(75, 5, 19, '2024-03-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(44, 3, 11, '2024-02-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(59, 4, 3, '2024-08-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 2, 80, '2024-09-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 5, 40, '2024-03-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 5, 6, '2024-04-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(89, 2, 31, '2024-10-09');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(23, 2, 26, '2024-09-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(46, 4, 65, '2024-10-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 5, 68, '2024-06-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 3, 36, '2024-02-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(4, 2, 97, '2024-11-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 1, 35, '2024-04-03');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 1, 61, '2024-06-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(7, 3, 39, '2024-01-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 2, 73, '2024-11-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(93, 1, 13, '2024-11-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(10, 2, 98, '2024-06-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(34, 2, 61, '2024-06-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(18, 5, 74, '2024-05-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(63, 2, 3, '2024-04-08');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(99, 5, 65, '2024-01-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 1, 66, '2024-02-29');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(51, 4, 38, '2024-05-05');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(82, 3, 60, '2024-08-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(32, 3, 93, '2024-08-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(12, 4, 53, '2024-12-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(66, 4, 10, '2024-03-14');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 2, 61, '2024-10-25');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(79, 2, 6, '2024-12-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 2, 62, '2024-08-19');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(97, 5, 40, '2024-01-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 2, 20, '2024-01-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(26, 5, 3, '2024-11-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(64, 2, 98, '2024-07-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 4, 56, '2024-05-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(11, 2, 12, '2024-05-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(85, 4, 27, '2024-10-30');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(38, 1, 85, '2024-05-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(17, 4, 29, '2024-09-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(11, 1, 57, '2024-11-28');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(43, 1, 64, '2024-03-13');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(83, 4, 94, '2024-12-21');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(55, 4, 62, '2024-10-12');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(87, 4, 81, '2024-09-07');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(15, 3, 81, '2024-02-18');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(49, 5, 67, '2024-05-02');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(5, 4, 51, '2024-07-22');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 2, 66, '2024-05-31');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(67, 2, 66, '2024-08-26');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(90, 1, 16, '2024-08-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(42, 2, 14, '2024-03-20');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(81, 3, 40, '2024-05-06');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(45, 5, 75, '2024-02-24');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(60, 1, 22, '2024-11-16');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(19, 3, 7, '2024-10-27');

INSERT INTO Shipments (ProductID, SupplierID, Quantity, ShipmentDate) VALUES
(58, 2, 76, '2024-01-22');
