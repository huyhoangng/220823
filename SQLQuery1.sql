Use EXAMPLE3;
GO

DROP table Products
Create table Products(
ProductsID INT PRIMARY KEY,
ProductsName varchar (50),
Category varchar(50),
Price MONEY,
Description varchar(1000),
CONSTRAINT CK_Price CHECK(Price >0));
GO
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (1,N'Iphone14PRM', N'Electronic',$1099, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (2,N'Iphone14PRO', N'Electronic',$899, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (3,N'Iphone14', N'Electronic',$799, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (4,N'Iphone13PRM', N'Electronic',$999, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (5,N'Iphone13PRO', N'Electronic',$859, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (6,N'Iphone13', N'Electronic',$759, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (7,N'Iphone12PRM', N'Electronic',$859, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (8,N'Iphone12PRO', N'Electronic',$759, 'Valid');
INSERT INTO Products(ProductsID, ProductsName,Category,Price,Description) VALUES (9,N'Iphone12', N'Electronic',$659, 'Valid');
Select * from Products

Create table Customers(
CustomersID INT PRIMARY KEY ,
FirstName varchar (50),
LastName varchar(50),
Email varchar(100),
Phone int,
Address varchar(1000),
CONSTRAINT CK_Email CHECK(Email like '%@%.%'));
GO
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (1, N'Hoang', N'Huy',0123456, 'Huyhoang@gmail.com','Tran Cung');
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (2, N'Hoang', N'Nguyen',02354135, 'Huygmail.com','Tran Cung');
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (5, N'Huy', N'Hoang', 1531351, 'Huyhoang2@gmail.com','Hanoi');
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (3, N'Nguyen', N'Hoang',8434483, 'Huyhoang3@gmail.com','My Dinh');
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (4, N'Huy', N'Nguyen Hoang',1313220, 'Nguyenhoang@gmail.com','Hoan Kiem');
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (7, N'Huy Hoang', N'Nguyen',131520145, 'Hoang@gmail.com','Tran Cung');
INSERT INTO Customers(CustomersID, FirstName, LastName,Phone,Email, Address) VALUES (6, N'HoangHuy', N'Nguyen',15315312, 'Huyhoang10@gmail.com','Tran Cung');
Select * from Customers

Create table Orders(
OrdersID INT PRIMARY KEY ,
CustomerOrderID int,
OrderDate Date,
TotalAmount money,
Status varchar(1000),
CONSTRAINT fk3 FOREIGN KEY (CustomerOrderID) REFERENCES Customers(CustomersID));
GO
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (100, 2, '2023-08-2',$30000,'Shipping');
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (502, 1, '2023-08-5',$20000,'Pick in store');
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (505, 3, '2023-08-22',$1000,'Shipping');
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (053, 5, '2023-08-12',$5000,'Pick in store');
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (504, 4, '2023-08-30',$3000,'Shipping');
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (507, 6, '2023-08-31',$4000,'Pick in store');
INSERT INTO Orders(OrdersID, CustomerOrderID, OrderDate,TotalAmount, Status) VALUES (506, 8, '2023-08-20',$2000,'Shipping');
SELECT * FROM Orders

Create table OrderItems(
OrderItemsID INT PRIMARY KEY ,
OrderID int,
ProductID int,
Quatity int,
UnitPrice money,
CONSTRAINT fk4 FOREIGN KEY (OrderID) REFERENCES Orders(OrdersID),
CONSTRAINT fk5 FOREIGN KEY (ProductID) REFERENCES Products(ProductsID));
GO
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (1, 100, 2, 2,$1000);
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (2, 502, 1, 3,$2000);
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (3, 505, 3, 1,$1000);
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (4, 053, 5, 5,$5000);
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (5, 504, 4, 3,$3000);
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (6, 507, 6, 4,$4000);
INSERT INTO OrderItems(OrderItemsID, OrderID, ProductID,Quatity, UnitPrice) VALUES (7, 506, 8, 2,$2000);
SELECT * FROM OrderItems
SELECT * FROM Customers WHERE FirstName LIKE 'Hoang';
SELECT * FROM Products WHERE Price BETWEEN $800 AND $1000;