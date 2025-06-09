USE InventoryDB_Large;

-- 1- List all products with their prices and stock levels.
SELECT ProductID,
	   ProductName,
	   UnitPrice,
	   UnitsInStock
FROM dbo.products;

-- 2- Find all suppliers located in Germany.
SELECT *
FROM dbo.Suppliers
WHERE Country = 'Germany';

-- 3- Show all shipments with product names and supplier names.
SELECT ShipmentID,
	   prod.ProductName,
	   sup.SupplierName
FROM dbo.Shipments AS ship
LEFT JOIN dbo.Products AS prod ON ship.ProductID = prod.ProductID
LEFT JOIN dbo.Suppliers AS sup ON ship.SupplierID = sup.SupplierID
GROUP BY ShipmentID,
		 prod.ProductName,
		 sup.SupplierName;

-- 4- Which products have more than 100 units in stock?
SELECT *
FROM dbo.Products
WHERE UnitsInStock >= 100;

-- 5- Find the total quantity shipped for each product.
SELECT prod.ProductID,
	   prod.productName,
	   SUM(ship.Quantity) AS TotalShippedQty
FROM dbo.Products AS prod
LEFT JOIN dbo.Shipments AS ship ON prod.ProductID = ship.ProductID
GROUP BY prod.ProductID,
		 prod.ProductName;

-- 6- Which supplier shipped the most items in total?
SELECT TOP 1
	   sup.SupplierID,
	   SUM(ship.Quantity) As tot_qty
FROM dbo.Suppliers AS sup
LEFT JOIN dbo.Shipments AS ship ON sup.SupplierID = ship.SupplierID
GROUP BY sup.SupplierID 
ORDER BY tot_qty DESC


-- 7- Show all shipments made after May 1, 2024.
SELECT *
FROM dbo.shipments
WHERE ShipmentDate > '2024-05-01';

-- 8- Which products have more than 100 units in stock?
SELECT *
FROM dbo.Products
WHERE UnitsInStock > 100;

-- 9- What is the total quantity shipped for each product?
SELECT prod.ProductID,
	   prod.ProductName,
	   SUM(ship.Quantity) AS shipped_qty
FROM dbo.Products prod
LEFT JOIN dbo.Shipments ship ON prod.ProductID = ship.ProductID
GROUP BY prod.ProductID,
		 prod.ProductName;

-- 10- List the most recent shipment date for each product.
SELECT prod.ProductID,
	   prod.ProductName,
	   MAX(ship.ShipmentDate) AS recent_shipment_date
FROM dbo.Products prod
LEFT JOIN dbo.Shipments ship ON prod.ProductID = ship.ProductID
GROUP BY prod.ProductID,
		 prod.ProductName;

-- 11- Which supplier shipped the most items overall?
SELECT TOP 1 
	   sup.SupplierID,
	   sup.SupplierName,
	   SUM(ship.Quantity) AS shipped_qty
FROM dbo.Suppliers sup
LEFT JOIN dbo.Shipments ship ON sup.SupplierID = ship.SupplierID
GROUP BY sup.SupplierID,
		 sup.SupplierName
ORDER BY shipped_qty DESC;

-- 12- Get the top 5 products by quantity shipped.
SELECT TOP 5
	   p.ProductID,
	   p.ProductName,
	   SUM(s.Quantity) AS shipped_qty
FROM dbo.products p
LEFT JOIN dbo.Shipments s ON p.ProductID = s. ProductID
GROUP BY p.ProductID,
		 p.ProductName
ORDER BY shipped_qty DESC;

-- 13- Which category has the most products in stock?
SELECT TOP 1
	   Category,
	   SUM(UnitsInStock) AS StocksQty
FROM dbo.Products
GROUP BY Category
ORDER BY StocksQty Desc;

-- 14- Show the average shipment quantity per supplier.
SELECT sup.SupplierName,
	   AVG(ship.Quantity) As AvgShippedQty
FROM dbo.Suppliers sup
LEFT JOIN dbo.Shipments ship ON sup.SupplierID = ship.SupplierID
GROUP BY sup.SupplierName;

-- 15- Find the product with the largest gap between stock and total quantity shipped.
SELECT TOP 1
	   p.ProductName,
	   SUM(s.Quantity) As ShippedQty,
	   p.UnitsInStock,
	   (SUM(s.Quantity) - p.UnitsInStock) As ShippedToStockGap
FROM dbo.Products AS p
LEFT JOIN dbo.Shipments AS s ON p.ProductID = s.ProductID
GROUP BY p.ProductName,
		 p.UnitsInStock
ORDER BY ShippedToStockGap DESC;

-- 16- Which supplier has shipped the largest variety of products?
SELECT TOP 1
	   sp.SupplierName, 
	   COUNT(DISTINCT s.ProductID) AS TotalProducts
FROM Shipments s
JOIN Suppliers sp ON s.SupplierID = sp.SupplierID
GROUP BY sp.SupplierName
ORDER BY TotalProducts DESC;

-- 17- List suppliers who have never shipped more than 9600 total items.
SELECT sp.SupplierName, 
	   SUM(s.Quantity) AS TotalShipped
FROM Shipments s
JOIN Suppliers sp ON s.SupplierID = sp.SupplierID
GROUP BY sp.SupplierName
HAVING SUM(s.Quantity) <= 9600;

-- 18- Identify products that have never been shipped.
SELECT p.ProductName,
	   SUM(s.Quantity) AS Qty
FROM dbo.products p
LEFT JOIN dbo.Shipments s ON p.ProductID = s.ProductID
GROUP BY p.ProductName
HAVING SUM(s.Quantity) IS NULL;

--- OR this soludtion
SELECT ProductName 
FROM dbo.Products
WHERE ProductID NOT IN (SELECT DISTINCT ProductID 
						FROM dbo.Shipments);

-- 19- Which month had the highest total shipments across all products?
SELECT
	   FORMAT(GETDATE(), 'yyyy-MM') AS Month,
	   SUM(Quantity) As TotalQty
FROM dbo.Shipments
GROUP BY DATEPART(quarter,ShipmentDate)
ORDER BY TotalQty DESC;

-- 20- Compare the number of shipments from each supplier per quarter.
SELECT SupplierID,
	   DATEPART(quarter,ShipmentDate) As Quarter,
	   SUM(Quantity) As ShippedQty
FROM dbo.Shipments
GROUP BY SupplierID,
		 DATEPART(quarter,ShipmentDate),
		 DATEPART(quarter,ShipmentDate)
ORDER BY SupplierID,
		 Quarter;

-- 21- Find the top 3 categories by total units in stock.
SELECT Category,
	   SUM(UnitsInStock) AS StockQty
FROM dbo.Products
GROUP BY Category
ORDER BY StockQty DESC;

-- 22- Show all suppliers who shipped products only in 2024.
SELECT * --DISTINCT SupplierID
FROM dbo.Shipments
WHERE YEAR(ShipmentDate) = '2024'
order by SupplierID


-- 23- For each product, list the first and last shipment date.
SELECT p.ProductID,
	   p.ProductName,
	   MAX(s.ShipmentDate) AS last_shipment_date,
	   MIn(s.ShipmentDate) AS first_shipment_date
FROM dbo.Products p
LEFT JOIN dbo.Shipments s ON p.ProductID = s.ProductID
GROUP BY p.ProductID,
		 p.ProductName;