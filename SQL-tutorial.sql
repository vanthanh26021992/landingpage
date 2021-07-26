-- 1. SELECT Syntax: lấy ra tất cả bản ghi của bảng
SELECT * FROM `account`;

-- 2. The SQL SELECT DISTINCT Statement: lay ra du lieu ma khong bi lap cot duoc danh dau
SELECT DISTINCT CITY FROM Customers;

--3. SQL WHERE Clause: Lấy ra dữ liệu với điều kiện lọc
SELECT * FROM Customers WHERE City='London';

--4 The SQL AND, OR and NOT Operators: Kết hợp các điều kiện trong mệnh đề where, dùng thêm đóng mở ngoặc ()
SELECT * FROM Customers WHERE NOT (Country='Germany' OR Country='USA');

--5 The SQL ORDER BY Keyword: Sắp xếp các bản ghi theo thứ tự, DESC dùng đảo ngược thứ tự
SELECT * FROM Customers ORDER BY ContactName DESC;

--6 SQL INSERT INTO Statement: Insert bản ghi vào bảng
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Alfreds Futterkiste',	'Maria Anders',	'Obere Str. 57',	'Berlin',	'12209',	'Germany');

--7: SQL NULL Values: Dữ liệu trống
SELECT * FROM Customers where PostalCode is NULL;

--8 SQL UPDATE Statement: Update các bản ghi trong bảng (UPDATE...SET...) trong mệnh đề set, dấu phẩy được dùng thay AND, nếu ko có mệnh đề WHERE, toàn bộ bản ghi trong bảng sẽ bị xóa
UPDATE Customers SET CustomerName = "Hello" where CustomerID = 1;

--9 The SQL DELETE Statement: Xóa bản ghi đã tồn tại trong bảng, nếu ko có mệnh đề WHERE, toàn bộ bản ghi trong bảng sẽ bị xóa
DELETE FROM Customers WHERE CustomerID >= 10;

--10 The SQL SELECT TOP Clause: Trả về số lượng giới hạn các bản ghi
SELECT TOP 10 FROM Customers; -- trả về theo số lượng bản ghi
SELECT TOP 10 PERCENT FROM Customers; -- trả về theo tỉ lệ phần trăm

--11 The SQL MIN() and MAX() Functions: trả về giá trị MIN hoặc MAX của thuộc tính được gọi trong tất cả bản ghi
SELECT MIN(Price) AS SmallestPrice FROM Products;

--12 SQL COUNT(), AVG() and SUM() Functions: trả về giá trị số phần tử, trung bình, tổng của thuộc tính được gọi trong tất cả bản ghi
SELECT COUNT(*) FROM Customers;
SELECT SUM(Price) FROM Products;
SELECT AVG(Price) FROM Products;

--13 SQL LIKE Operator: trả về bản ghi có column lọc theo ký tự (% đại diện cho 0 hoặc nhiều ký tự ngẫu nhiên, _ đại diện cho 1 ký tự ngẫu nhiên)
SELECT * FROM Customers WHERE CustomerName LIKE "a%";

--14 SQL Wildcards: ký tự thay thế % _ [] ^ -
-- %: 0 hoặc nhiều kí tự
-- _ 1 ký tự
-- [] khoanh vùng các ký tự trong ngoặc
-- ^ = ! vùng không chứa các ký tự
-- a-b: vùng các ký tự từ a đén b

--15 The SQL IN Operator: Dùng nhóm các giá trị so sánh (dùng thay OR)
SELECT Country FROM Customers WHERE Country IN ('Germany', 'France', 'UK');

-- 16 SQL BETWEEN Operator: Chọn giá trị trong khoảng BETWEEN ... AND ...
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20AND CategoryID NOT IN (1,2,3);

--17 SQL Aliases: đặt bí danh cho cột hoặc bảng, nếu bí danh có khoảng trắng thì cần có ngoặc vuông, chỉ có hiệu lực trong phạm vi truy vấn hiện tại
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address FROM Customers;
SELECT o.OrderID, o.OrderDate, c.CustomerName, c.Address AS [Cus Address] FROM Customers AS C, Orders AS o WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID;

--18 SQL INNER JOIN Keyword: Lấy ra những bản ghi của 2 bảng thỏa mãn điều kiện
SELECT Orders.OrderID, Customers.CustomerName FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;

--19 SQL LEFT JOIN Keyword: Lấy ra toàn bộ bản ghi của bảng bên trái và những cột của bảng bên phải nếu thỏa điều kiện, nếu ko thỏa thì NULL
SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID ORDER BY Customers.CustomerName;

--20 SQL RIGHT JOIN Keyword: Lấy ra toàn bộ bản ghi của bảng bên phải và những cột của bảng bên trái nếu thỏa điều kiện, nếu ko thì NULL
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName FROM Orders RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID ORDER BY Orders.OrderID;        

--21 SQL FULL OUTER JOIN Keyword

--22 SQL Self Join

--23 SQL UNION Operator: Gộp kết quả của 2 câu lệnh truy vấn
SELECT City FROM Customers UNION SELECT City FROM Suppliers ORDER BY City;

--24 SQL GROUP BY Statement: Nhóm các giá trị lại theo 1 giá trị nhất định
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;

--25 SQL HAVING Clause: Dùng thay WHERE khi điều kiện dùng FUNCTION
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName HAVING NumberOfOrders > 10;

--26 SQL EXISTS Operator: Điều kiện để chạy truy vấn, trả về TRUE nếu có ít nhất 1 bản ghi, FALSE nếu ko có bản ghi nào

--27 SQL ANY and ALL Operators: Điều kiện để truy vấn, ANY trả về true nếu thỏa mãn ít nhất 1 phần tử thuộc tập bản ghi, ALL trả về TRUE chỉ khi thỏa mãn toàn bộ các phần tử thuộc tập bản ghi
SELECT ProductName FROM Products WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);
SELECT ProductName FROM Products WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity > 99);

--28 SQL SELECT INTO Statement: Copy một hoặc toàn bộ cột trong bảng cũ tạo thành 1 bảng mới
SELECT * INTO CustomersGermany FROM Customers WHERE Country = 'Germany';

--29 SQL INSERT INTO SELECT Statement: Đẩy bản ghi từ bảng này sang bảng khác
INSERT INTO Customers (CustomerName, City, Country) SELECT SupplierName, City, Country FROM Suppliers;

--30 SQL CASE Statement: Đặt các điều kiện trong truy vấn, nếu CASE đầu thỏa mãn thì ngưng, ngược lại so sánh CASE sau, nếu toàn bộ ko thỏa mãn thì vào ELSE, nếu ko có ELSE thì trả về NULL
SELECT OrderID, Quantity, CASE WHEN Quantity > 30 THEN 'The quantity is greater than 30' WHEN Quantity = 30 THEN 'The quantity is 30' ELSE 'The quantity is under 30' END AS QuantityText FROM OrderDetails;
        