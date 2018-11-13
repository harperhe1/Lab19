select * from Customers

select distinct Country from Customers

select * from Customers 
where CustomerID like 'BL%'

select top 100 * from Customers;

select * from Customers
where PostalCode in ('1010', '3012', '12209', '05023')

select * from Orders
where ShipRegion is not null

select * from Customers
order by country, city

insert into Customers 
(CustomerID, CompanyName, ContactName, ContactTitle, Address, City)
values 
('THECO', 'The Company', 'Bob Dumaflachi', 'Owner',  '25 N.River', 'Toledo') 

update Orders set ShipRegion = 'EuroZone'
where ShipCountry = 'France'

delete from [Order Details]
where Quantity = 1

select avg (Quantity) from [Order Details]

select max (Quantity) from [Order Details]

select min (Quantity) from [Order Details]

select avg (Quantity) from [Order Details] group by [OrderID]

select max (Quantity) from [Order Details] group by [OrderID]

select min (Quantity) from [Order Details] group by [OrderID]

select CustomerID from Orders where CustomerID = 10290

select Orders.CustomerID, Customers.CustomerID
from Orders inner join Customers
ON Orders.CustomerID=Customers.CustomerID

select Orders.CustomerID, Customers.CustomerID
from Orders left join Customers
ON Orders.CustomerID=Customers.CustomerID

select Orders.CustomerID, Customers.CustomerID
from Orders Right join Customers
ON Orders.CustomerID=Customers.CustomerID

select FirstName from Employees where ReportsTo is null

select FirstName from Employees where ReportsTo = 2
