
--Creat TABLE
CREATE TABLE Customers (
	CustomerID int AUTO_INCREMENT PRIMARY KEY,
	CustomerName Varchar(255),
    ContactName Varchar(255),
    Address Varchar(255),
    City Varchar(255),
    PostalCode Varchar(255),
    Country Varchar(255)
);
CREATE TABLE Categories (
	CategoriesID int AUTO_INCREMENT PRIMARY KEY,
    CategoryName Varchar(255),
    Description Varchar(5000)               
);
CREATE TABLE Employees ( 
    EmployeeID int AUTO_INCREMENT PRIMARY KEY,
    LastName Varchar(255),
    FirstName Varchar(255),
    BirthDate DATE,
    Photo Varchar(255),
    Notes Varchar(5000)
);
CREATE TABLE OrderDetails (
    OrderDetailID int AUTO_INCREMENT PRIMARY KEY,
    OrderID int,
    ProductID int,
    Quantity int
);
CREATE TABLE Orders (
	OrderID int AUTO_INCREMENT PRIMARY KEY,
    CustomerID int,
    EmployeeID int,
    OrderDate DATE,
    ShipperID int
);
CREATE TABLE Products (
    ProductID int AUTO_INCREMENT PRIMARY KEY,
    ProductName Varchar(255),
    SupplierID int,
    CategoryID int,
    Unit Varchar(225),
    Price float
);
CREATE TABLE Shippers (
    ShipperID int AUTO_INCREMENT PRIMARY KEY,
    ShipperName Varchar(225),
    Phone Varchar(225)
);
CREATE TABLE Suppliers (
    SupplierID int AUTO_INCREMENT PRIMARY KEY,
    SupplierName Varchar(225),
    ContactName Varchar(225),
    Address Varchar(5000),
    City Varchar(225),
    PostalCode Varchar(225),
    Country Varchar(225),
    Phone Varchar(225)
);
        
--INSERT data to TABLE Customers
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Alfreds Futterkiste',	'Maria Anders',	'Obere Str. 57',	'Berlin',	'12209',	'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Ana Trujillo Emparedados y helados',	'Ana Trujillo',	'Avda. de la Constitución 2222',	'México D.F.',	'05021',	'Mexico');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Antonio Moreno Taquería',	'Antonio Moreno',	'Mataderos 2312',	'México D.F.',	'05023',	'Mexico');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Around the Horn',	'Thomas Hardy',	'120 Hanover Sq.',	'London',	'WA1 1DP',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Berglunds snabbköp',	'Christina Berglund',	'Berguvsvägen 8',	'Luleå',	'S-958 22',	'Sweden');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Blauer See Delikatessen',	'Hanna Moos',	'Forsterstr.57',	'Mannheim',	'68306',	'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Blondel père et fils',	'Frédérique Citeaux',	'24, place Kléber',	'Strasbourg',	'67000',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Bólido Comidas preparadas',	'Martín Sommer',	'C/ Araquil, 67',	'Madrid',	'28023',	'Spain');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Bon app',	'Laurence Lebihans',	'12, rue des Bouchers',	'Marseille',	'13008',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Bottom-Dollar Marketse',	'Elizabeth Lincoln',	'23 Tsawassen Blvd.',	'Tsawassen',	'T2F 8M4',	'Canada');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Bs Beverages',	'Victoria Ashworth',	'auntleroy Circus',	'London',	'EC2 5NT',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Cactus Comidas para llevar',	'Patricio Simpson'	,'errito 333' ,'BuenosAires',	'1010',	'Argentina');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Centro comercial Moctezuma',	'Francisco Chang',	'Sierras de Granada 9993',	'México D.F.',	'05022',	'Mexico');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Chop-suey Chinese',	'Yang Wang',	'Hauptstr. 29',	'Bern',	'3012',	'Switzerland');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Comércio Mineiro',	'Pedro Afonso',	'Av. dos Lusíadas, 23',	'São Paulo',	'05432-043',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Consolidated Holdings',	'Elizabeth Brown',	'Berkeley Gardens 12 Brewery',	'London',	'WX1 6LT',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Drachenblut Delikatessend',	'Sven Ottlieb',	'Walserweg 21',	'Aachen',	'52066',	'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Du monde entier',	'Janine Labrune',	'67, rue des Cinquante Otages',	'Nantes',	'44000',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Eastern Connection',	'Ann Devon',	'5 King George',	'London',	'WX3 6FW',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Ernst Handel',	'Roland Mendel',	'Kirchgasse 6',	'Graz',	'8010',	'Austria');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Familia Arquibaldo',	'Aria Cruz',	'Rua Orós, 92',	'São Paulo',	'05442-030',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('FISSA Fabrica Inter. Salchichas S.A.',	'Diego Roel',	'C/ Moralzarzal, 86',	'Madrid',	'28034',	'Spain');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Folies gourmandes',	'Martine Rancé',	'84, chaussée de Tournai',	'Lille'	,'59000',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Folk och fä HB'	,'Maria Larsson',	'Åkergatan 24',	'Bräcke',	'S-844 67',	'Sweden');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Frankenversand',	'Peter Franken',	'Berliner Platz 43',	'München',	'80805'	,'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('France restauration',	'Carine Schmitt',	'54, rue Royale',	'Nantes',	'44000',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Franchi S.p.A.',	'Paolo Accorti',	'Via Monte Bianco 34',	'Torino',	'10100',	'Italy');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Furia Bacalhau e Frutos do Mar',	'Lino Rodriguez',	'Jardim das rosas n. 32',	'Lisboa',	'1675',	'Portugal');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Galería del gastrónomo',	'Eduardo Saavedra',	'Rambla de Cataluña, 23',	'Barcelona'	,'08022',	'Spain');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Godos Cocina Típica',	'José Pedro Freyre',	'C/ Romero, 33',	'Sevilla',	'41101',	'Spain');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Gourmet Lanchonetes',	'ndré Fonseca',	'Av. Brasil, 442',	'Campinas',	'04876-786',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Great Lakes Food Market',	'Howard Snyder',	'2732 Baker Blvd.',	'Eugene',	'97403',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('GROSELLA-Restaurante',	'Manuel Pereira',	'5ª Ave. Los Palos Grandes',	'Caracas',	'1081',	'Venezuela');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Hanari Carnes',	'Mario Pontes',	'Rua do Paço, 67',	'Rio de Janeiro',	'05454-876'	,'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('HILARIÓN-Abastos',	'Carlos Hernández'	,'Carrera 22 con Ave. Carlos Soublette #8-35',	'San Cristóbal',	'5022',	'Venezuela');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Hungry Coyote Import Store',	'Yoshi Latimer',	'City Center Plaza 516 Main St.',	'Elgin',	'97827'	,'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, Country)VALUES ('Hungry Owl All-Night Grocers',	'Patricia McKenna',	'8 Johnstown Road'	,'Cork'	,	'Ireland');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Island Trading',	'Helen Bennett'	,'Garden House Crowther Way',	'Cowes',	'PO31 7PJ',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Königlich Essen'	,'Philip Cramer',	'Maubelstr. 90'	,'Brandenburg'	,'14776'	,'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('La corne d"abondance',	'Daniel Tonini'	,'67, avenue de l"Europe',	'Versailles'	,'78000',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('La maison d"Asie',	'Annette Roulet',	'1 rue Alsace-Lorraine',	'Toulouse',	'31000',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Laughing Bacchus Wine Cellars',	'Yoshi Tannamuri'	,'1900 Oak St.',	'Vancouver'	,'V3F 2K1',	'Canada');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Lazy K Kountry Store',	'John Steel',	'12 Orchestra Terrace'	,'Walla Walla'	,'99362',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Lehmanns Marktstand'	,'Renate Messner'	,'Magazinweg 7'	,'Frankfurt a.M.',	'60528'	,'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Let-s Stop N Shop',	'Jaime Yorres'	,'87 Polk St. Suite 5',	'San Francisco'	,'94117',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('LILA-Supermercado',	'Carlos González',	'Carrera 52 con Ave. Bolívar #65-98 Llano Largo',	'Barquisimeto'	,'3508',	'Venezuela');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('LINO-Delicateses',	'Felipe Izquierdo',	'Ave. 5 de Mayo Porlamar'	,'I. de Margarita',	'4980',	'Venezuela');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Lonesome Pine Restaurant'	,'Fran Wilson',	'89 Chiaroscuro Rd.',	'Portland'	,'97219',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Magazzini Alimentari Riuniti'	,'Giovanni Rovelli',	'Via Ludovico il Moro 22',	'Bergamo',	'24100',	'Italy');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Maison Dewey',	'Catherine Dewey',	'Rue Joseph-Bens 532',	'Bruxelles',	'B-1180',	'Belgium');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Mère Paillarde',	'Jean Fresnière',	'43 rue St. Laurent',	'Montréal',	'H1J 1C3',	'Canada');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Morgenstern Gesundkost',	'Alexander Feuer'	,'Heerstr. 22'	,'Leipzig',	'04179'	,'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('North/South',	'Simon Crowther',	'South House 300 Queensbridge',	'London',	'SW7 1RZ',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Océano Atlántico Ltda.',	'Yvonne Moncada',	'Ing. Gustavo Moncada 8585 Piso 20-A',	'Buenos Aires',	'1010',	'Argentina');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Old World Delicatessen',	'Rene Phillips',	'2743 Bering St.',	'Anchorage',	'99508'	,'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Ottilies Käseladen',	'Henriette Pfalzheim'	,'Mehrheimerstr. 369',	'Köln'	,'50739',	'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Paris spécialités',	'Marie Bertrand',	'265, boulevard Charonne',	'Paris',	'75012',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Pericles Comidas clásicas',	'Guillermo Fernández',	'Calle Dr. Jorge Cash 321',	'México', 'D.F.	05033',	'Mexico');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Piccolo und mehr',	'Georg Pipps',	'Geislweg 14',	'Salzburg',	'5020',	'Austria');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Princesa Isabel Vinhoss',	'Isabel de Castro',	'Estrada da saúde n. 58',	'Lisboa'	,'1756',	'Portugal');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Que Delícia'	,'Bernardo Batista',	'Rua da Panificadora, 12',	'Rio de Janeiro',	'02389-673'	,'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Queen Cozinha'	,'Lúcia Carvalho',	'Alameda dos Canàrios, 891'	,'São Paulo',	'05487-020',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('QUICK-Stop',	'Horst Kloss',	'Taucherstraße 10'	,'Cunewalde',	'01307'	,'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Rancho grande',	'Sergio Gutiérrez',	'Av. del Libertador 900',	'Buenos Aires',	'1010','Argentina');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Rattlesnake Canyon Grocery',	'Paula Wilson',	'2817 Milton Dr.'	,'Albuquerque',	'87110',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Reggiani Caseifici',	'Maurizio Moroni'	,'Strada Provinciale 124',	'Reggio Emilia',	'42100'	,'Italy');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Ricardo Adocicados',	'Janete Limeira'	,'Av. Copacabana, 267',	'Rio de Janeiro',	'02389-890',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Richter Supermarkt',	'Michael Holz'	,'Grenzacherweg 237',	'Genève'	,'1203'	,'Switzerland');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Romero y tomillo',	'Alejandra Camino'	,'Gran Vía, 1'	,'Madrid',	'28001',	'Spain');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Santé Gourmet'	,'Jonas Bergulfsen',	'Erling Skakkes gate 78',	'Stavern',	'4110',	'Norway');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Save-a-lot Markets'	,'Jose Pavarotti'	,'187 Suffolk Ln.',	'Boise'	,'83720'	,'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Seven Seas Imports',	'Hari Kumar',	'90 Wadhurst Rd.'	,'London',	'OX15 4NB',	'UK');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Simons bistro'	,'Jytte Petersen'	,'Vinbæltet 34',	'København',	'1734',	'Denmark');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Spécialités du monde'	,'Dominique Perrier'	,'25, rue Lauriston'	,'Paris',	'75016'	,'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Split Rail Beer & Ale',	'Art Braunschweiger'	,'P.O. Box 555'	,'Lander',	'82520',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Suprêmes délices'	,'Pascale Cartrain',	'Boulevard Tirou, 255',	'Charleroi'	,'B-6000'	,'Belgium');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('The Big Cheese',	'Liz Nixon',	'89 Jefferson Way Suite 2',	'Portland',	'97201',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('The Cracker Box',	'Liu Wong',	'55 Grizzly Peak Rd.',	'Butte',	'59801',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Toms Spezialitäten',	'Karin Josephs',	'Luisenstr. 48',	'Münster',	'44087',	'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Tortuga Restaurante',	'Miguel Angel Paolino',	'Avda. Azteca 123',	'México D.F.',	'05033',	'Mexico');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Tradição Hipermercados',	'Anabela Domingues',	'Av. Inês de Castro, 414',	'São Paulo',	'05634-030',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Trail-s Head Gourmet Provisioners',	'Helvetius Nagy',	'722 DaVinci Blvd.',	'Kirkland',	'98034',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Vaffeljernet',	'Palle Ibsen',	'Smagsløget 45',	'Århus',	'8200',	'Denmark');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Victuailles en stock',	'Mary Saveley',	'2, rue du Commerce',	'Lyon',	'69004',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Vins et alcools Chevalier',	'Paul Henriot',	'59 rue de l-Abbaye',	'Reims',	'51100',	'France');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Die Wandernde Kuh',	'Rita Müller',	'Adenauerallee 900',	'Stuttgart',	'70563',	'Germany');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Wartian Herkku',	'Pirkko Koskitalo',	'Torikatu 38',	'Oulu',	'90110',	'Finland');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Wellington Importadora',	'Paula Parente',	'Rua do Mercado, 12',	'Resende',	'08737-363',	'Brazil');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('White Clover Markets',	'Karl Jablonski',	'305 - 14th Ave. S. Suite 3B',	'Seattle',	'98128',	'USA');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Wilman Kala',	'Matti Karttunen',	'Keskuskatu 45',	'Helsinki',	'21240',	'Finland');
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Wolski',	'Zbyszek',	'ul. Filtrowa 68',	'Walla',	'01-012',	'Poland');

INSERT INTO Categories (CategoryName, Description)VALUES ('Beverages', 	'Soft drinks, coffees, teas, beers, and ales ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Condiments', 	'Sweet and savory sauces, relishes, spreads, and seasonings ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Confections', 	'Desserts, candies, and sweet breads ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Dairy Products', 	'Cheeses ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Grains/Cereals', 	'Breads, crackers, pasta, and cereal ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Meat/Poultry', 	'Prepared meats ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Produce',	'Dried fruit and bean curd ');
INSERT INTO Categories (CategoryName, Description)VALUES ('Seafood', 	'Seaweed and fish ');

INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Davolio', 	'Nancy', 	'1968-8-12', 	'EmpID1.pic', 	'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of "Toastmasters International". ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Fuller', 	'Andrew', 	'1952-2-19', 	'EmpID2.pic', 	'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Leverling', 	'Janet', 	'1963-8-30', 	'EmpID3.pic', 	'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Peacock', 	'Margaret', 	'1958-9-19', 	'EmpID4.pic', 	'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Buchanan', 	'Steven', 	'1955-3-4', 	'EmpID5.pic', 	'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management". He is fluent in French. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Suyama', 	'Michael', 	'1963-7-2', 	'EmpID6.pic', 	'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional". He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('King', 	'Robert', 	'1960-5-29', 	'EmpID7.pic', 	'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled "Selling in Europe", he was transferred to the London office. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Callahan', 	'Laura', 	'1958-1-9', 	'EmpID8.pic', 	'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('Dodsworth', 	'Anne', 	'1969-7-2', 	'EmpID9.pic', 	'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German. ');
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)VALUES ('West', 	'Adam', 	'1928-9-19', 	'EmpID10.pic', 	'An old chum ');

INSERT INTO Shippers (ShipperName, Phone)VALUES ('Speedy Express', 	'(503) 555-9831');
INSERT INTO Shippers (ShipperName, Phone)VALUES ('United Package',	'(503) 555-3199');
INSERT INTO Shippers (ShipperName, Phone)VALUES ('Federal Shipping', 	'(503) 555-9931');

INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Exotic Liquid', 	'Charlotte Cooper', 	'49 Gilbert St.', 	'Londona', 	'EC1 4SD', 	'UK', 	'(171) 555-2222 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('New Orleans Cajun Delights', 	'Shelley Burke', 	'P.O. Box 7893', 	'New Orleans', 	'70117', 	'USA', 	'(100) 555-4822');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ("Grandma Kelly's Homestead", 	'Regina Murphy', 	'707 Oxford Rd.', 	'Ann Arbor', 	'48104', 	'USA', 	'(313) 555-5735 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Tokyo Traders', 	'Yoshi Nagase', 	'9-8 Sekimai Musashino-shi', 	'Tokyo', 	'100', 	'Japan', 	'(03) 3555-5011 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ("Cooperativa de Quesos 'Las Cabras'", 	'Antonio del Valle Saavedra',  	'Calle del Rosal 4', 	'Oviedo', 	'33007', 	'Spain', 	'(98) 598 76 54 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ("Mayumi's", 	'Mayumi Ohno', 	'92 Setsuko Chuo-ku', 	'Osaka', 	'545', 	'Japan', 	'(06) 431-7877 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Pavlova, Ltd.', 	'Ian Devling', 	'74 Rose St. Moonie Ponds', 	'Melbourne', 	'3058', 	'Australia', 	'(03) 444-2343 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Specialty Biscuits, Ltd.', 	'Peter Wilson', 	"29 King's Way", 	'Manchester', 	'M14 GSD', 	'UK ',	'(161) 555-4448 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('PB Knäckebröd AB', 	'Lars Peterson', 	'Kaloadagatan 13', 	'Göteborg', 	'S-345 67', 	'Sweden',  	'031-987 65 43 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Refrescos Americanas LTDA', 	'Carlos Diaz', 	'Av. das Americanas 12.890', 	'São Paulo', 	'5442', 	'Brazil', 	'(11) 555 4640 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Heli Süßwaren GmbH & Co. KG', 	'Petra Winkler', 	'Tiergartenstraße 5', 	'Berlin', 	'10785', 	'Germany', 	'(010) 9984510 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Plutzer Lebensmittelgroßmärkte AG', 	'Martin Bein', 	'Bogenallee 51', 	'Frankfurt', 	'60439', 	'Germany', 	'(069) 992755 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Nord-Ost-Fisch Handelsgesellschaft mbH', 	'Sven Petersen', 	'Frahmredder 112a', 	'Cuxhaven', 	'27478', 	'Germany', 	'(04721) 8713 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Formaggi Fortini s.r.l.', 	'Elio Rossi', 	'Viale Dante, 75', 	'Ravenna', 	'48100', 	'Italy', 	'(0544) 60323 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Norske Meierier', 	'Beate Vileid', 	'Hatlevegen 5', 	'Sandvika', 	'1320', 	'Norway',	'(0)2-953010');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Bigfoot Breweries', 	'Cheryl Saylor', 	'3400 - 8th Avenue Suite 210', 	'Bend', 	'97101', 	'USA', 	'(503) 555-9931 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Svensk Sjöföda AB', 	'Michael Björn', 	'Brovallavägen 231', 	'Stockholm', 	'S-123 45', 	'Sweden', 	'08-123 45 67 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Aux joyeux ecclésiastiques', 	'Guylène Nodier', 	'203, Rue des Francs-Bourgeois', 	'Paris', 	'75004', 	'France', 	'(1) 03.83.00.68');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('New England Seafood Cannery', 	'Robb Merchant', 	'Order Processing Dept. 2100 Paul Revere Blvd.', 	'Boston', 	'02134', 	'USA', 	'(617) 555-3267 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Leka Trading', 	'Chandra Leka', 	'471 Serangoon Loop, Suite #402', 	'Singapore', 	'0512', 	'Singapore', 	'555-8787 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Lyngbysild',	'Niels Petersen', 	'Lyngbysild Fiskebakken 10', 	'Lyngby', 	'2800', 	'Denmark', 	'43844108 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Zaanse Snoepfabriek', 	'Dirk Luchte', 	'Verkoop Rijnweg 22', 	'Zaandam', 	'9999 ZZ',	'Netherlands', 	'(12345) 1212 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Karkki Oy', 	'Anne Heikkonen', 	'Valtakatu 12', 	'Lappeenranta', 	'53120', 	'Finland', 	'(953) 10956');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ("G'day, Mate", 	'Wendy Mackenzie', 	"170 Prince Edward Parade Hunter's Hill", 	'Sydney', 	'2042', 	'Australia', 	'(02) 555-5914 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Ma Maison', 	'Jean-Guy Lauzon', 	'2960 Rue St. Laurent', 	'Montréal', 	'H1J 1C3', 	'Canada',	'(514) 555-9022 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Pasta Buttini s.r.l.', 	'Giovanni Giudici', 	'Via dei Gelsomini, 153', 	'Salerno', 	'84100', 	'Italy', 	'(089) 6547665');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Escargots Nouveaux', 	'Marie Delamare', 	'22, rue H. Voiron', 	'Montceau', 	'71300', 	'France', 	'85.57.00.07 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('Gai pâturage', 	'Eliane Noz',	'Bat. B 3, rue des Alpes', 	'Annecy', 	'74000', 	'France', 	'38.76.98.06 ');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ("Forêts d'érables", 	'Chantal Goulet', 	'148 rue Chasseur', 	'Ste-Hyacinthe', 	'J2S 7S8', 	'Canada', 	'(514) 555-2955 ');


INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('');
INSERT INTO Suppliers (SupplierName, ContactName, Address, City, PostalCode, Country, Phone )VALUES ('');







