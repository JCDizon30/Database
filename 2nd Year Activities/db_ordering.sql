-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 06:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`) VALUES
(1, 'Shoes'),
(2, 'Short'),
(3, 'T-Shirt'),
(4, 'Ball'),
(5, 'Protein Powder'),
(6, 'Energy Drink');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Email`, `PhoneNumber`) VALUES
(1, 'Lebron', 'James', 'james@gmail.com', '+1264836592'),
(2, 'Kobe', 'Bryant', 'kobe@gmail.com', '+8284919485'),
(3, 'Steph', 'Curry', 'steph@gmail.com', '+3758463728'),
(4, 'Scottie', 'Thompson', 'Scottie@gmail.com', '+1736495025'),
(5, 'Micheal', 'Jordan', 'jordan@gmail.com', '+7461038472'),
(6, 'Justine', 'Brownlee', 'Justine@gmail.com', '+3479572649'),
(7, 'Al', 'James', 'Al@gmail.com', '+1264836592'),
(8, 'Luka', 'Docic', 'luka@gmail.com', '+3846372947'),
(9, 'Kyrie', 'Irving', 'irving@gmail.com', '+6283648362'),
(10, 'Steve', 'Fox', 'steve@gmail.com', '+2736402836'),
(11, 'Larry', 'Bird', 'larry@gmail.com', '+4848274957'),
(12, 'Magic', 'Johnson', 'johnson@gmail.com', '+1927496042'),
(13, 'Calvin', 'Abueva', 'calvin@gmail.com', '+3847501747'),
(14, 'Klay', 'Thomson', 'klay@gmail.com', '+1736548939'),
(15, 'Yhuan', 'James', 'yhuan@gmail.com', '+1237485936'),
(16, 'Jayson', 'Castro', 'jayson@gmail.com', '+48592372947'),
(17, 'Kevin', 'Alas', 'kevin@gmail.com', '+47563292837'),
(18, 'Junmar', 'Fajardo', 'Fajardo@gmail.com', '+3746593629'),
(19, 'Rhenz', 'Abando', 'Abando@gmail.com', '+2374926493'),
(20, 'Dwight', 'Ramos', 'Ramos@gmail.com', '+36485903748');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `FirstName`, `LastName`, `JobTitle`, `Department`) VALUES
(1, 'Frazer', 'Wallace', 'Store Manager', 'Store Management'),
(2, 'Hugo', 'Bond', 'Sales Associate', 'Sales'),
(3, 'Abdul', 'Mccann', 'Visual Merchandiser', 'Visual Merchandising'),
(4, 'Haroon', 'Rocha', 'Inventory Specialist', 'Inventory Management'),
(5, 'Chester', 'Orr', 'Customer Service Representative', ' Customer Service'),
(6, 'Eliza', 'Pearce', ' Cashier', 'Point of Sale (POS)'),
(7, 'Marcel', 'Klein', 'Assistant Manager', 'Store Management'),
(8, 'Abdullah', 'Frederick', 'Footwear Specialist', 'Footwear Department'),
(9, 'Osian', 'Long', ' Apparel Associate', 'Apparel Department'),
(10, 'Adil ', 'Prince', 'Equipment Technician', 'Equipment and Gear Maintenance'),
(11, 'Carmen', 'Mcdaniel', 'Store Keeper', 'Store Managment'),
(12, 'Sebastian', 'Evans', 'Cashier', 'Point of Sale (POS)'),
(13, 'Declan', 'Douglas', 'Footwear Specialist', 'Footwear Department'),
(14, 'Keith', 'Smith', 'Store Keeper', 'Store Managmen'),
(15, 'Raphael', 'Gordon', 'Cashier', 'Point of Sale (POS)'),
(16, 'Mohamed', 'Garcia', 'Footwear Specialist', 'Footwear Department'),
(17, 'Aoife', 'Newman', 'Store Keeper', 'Store Managmen'),
(18, 'Abraham', 'Townsend', 'Footwear Specialist', 'Footwear Department'),
(19, 'Ted', 'Hampton', 'Cashier', 'Point of Sale (POS)'),
(20, 'Elena', 'Chandler', 'Store Keeper', 'Store Managmen');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderItemID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`OrderItemID`, `OrderID`, `ProductID`, `Quantity`, `Subtotal`) VALUES
(1, 1, 1, 10, 5000.77),
(2, 2, 2, 5, 6000.99),
(3, 3, 3, 6, 4000.66),
(4, 4, 4, 7, 1500.55),
(5, 5, 5, 8, 3000.11),
(6, 6, 6, 9, 7000.22),
(7, 7, 7, 10, 2333.55),
(8, 8, 8, 11, 4444.22),
(9, 9, 9, 12, 8000.33),
(10, 10, 10, 13, 3500.44),
(11, 11, 11, 14, 2222.22),
(12, 12, 12, 15, 4000.66),
(13, 13, 13, 20, 3000.44),
(14, 14, 14, 25, 7000.22),
(15, 15, 15, 13, 3444.66),
(16, 16, 16, 14, 1222.33),
(17, 17, 17, 23, 3488.00),
(18, 18, 18, 15, 1000.55),
(19, 19, 19, 30, 8000.33),
(20, 20, 20, 20, 9000.33);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `TotalAmount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `OrderDate`, `TotalAmount`) VALUES
(1, 1, '2023-12-28', 500.10),
(2, 2, '2022-11-21', 600.20),
(3, 3, '2021-10-22', 700.30),
(4, 4, '2020-09-23', 800.40),
(5, 5, '2021-08-24', 900.50),
(6, 6, '2018-07-25', 400.60),
(7, 7, '2019-06-26', 300.70),
(8, 8, '2016-05-27', 200.90),
(9, 9, '2017-04-28', 100.50),
(10, 10, '2021-03-29', 200.18),
(11, 11, '0000-00-00', 540.12),
(12, 12, '2023-01-15', 330.24),
(13, 13, '2020-12-16', 440.26),
(14, 14, '2022-04-17', 550.77),
(15, 15, '2016-02-28', 660.88),
(16, 16, '2022-06-18', 770.99),
(17, 17, '2018-07-19', 880.33),
(18, 18, '2019-08-20', 990.44),
(19, 19, '2017-03-02', 110.22),
(20, 20, '2022-11-08', 220.55);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PaymentID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PaymentID`, `OrderID`, `PaymentDate`, `Amount`) VALUES
(1, 1, '2023-01-05', 550.10),
(2, 2, '2022-11-26', 650.20),
(3, 3, '2021-10-27', 750.30),
(4, 4, '2020-09-28', 850.40),
(5, 5, '2021-08-29', 950.50),
(6, 6, '2018-07-29', 450.60),
(7, 7, '2019-06-29', 350.70),
(8, 8, '2016-05-29', 250.90),
(9, 9, '2017-04-29', 150.50),
(10, 10, '2021-04-04', 250.18),
(11, 11, '2021-11-14', 590.12),
(12, 12, '2023-01-20', 380.24),
(13, 13, '2020-12-19', 490.26),
(14, 14, '2022-04-20', 600.77),
(15, 15, '2016-03-03', 710.88),
(16, 16, '2022-06-23', 820.99),
(17, 17, '2018-07-25', 930.33),
(18, 18, '2019-08-26', 1040.44),
(19, 19, '2017-03-08', 160.22),
(20, 20, '2022-11-14', 270.55);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `Price`, `Category`) VALUES
(1, 'Nike', 500.22, 'Shoes'),
(2, 'Adidas', 600.33, 'Shoes'),
(3, 'Nike', 100.44, 'T-shirt'),
(4, 'Adidas', 200.11, 'T-shirt'),
(5, 'Nike', 300.55, 'Short'),
(6, 'Adidas', 400.66, 'Short'),
(7, 'Spalding', 500.77, 'Ball'),
(8, 'Molten', 700.88, 'Ball'),
(9, 'Mikasa', 800.99, 'Ball'),
(10, 'World Balance', 900.12, 'Shoes'),
(11, 'New Balance', 150.14, 'Shoes'),
(12, 'Nike', 250.23, 'Ball'),
(13, 'Adidas', 350.56, 'ball'),
(14, 'A1 Whey', 550.48, 'Protein Powder'),
(15, 'Whey King', 650.37, 'Protein Powder'),
(16, 'Prothn', 500.85, 'Protein Powder'),
(17, 'Red Bull', 50.97, 'Energy Drinks'),
(18, 'Cobra', 30.43, 'Energy Drinks'),
(19, 'Gatorade', 30.25, 'Energy Drinks'),
(20, 'Athlene', 500.68, 'Protein Powder');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ReviewID`, `ProductID`, `CustomerID`, `Rating`, `Comment`) VALUES
(1, 1, 1, 10, 'Quick and efficient service!'),
(2, 2, 2, 3, 'Impressed with the speedy delivery.'),
(3, 3, 3, 6, 'Smooth ordering process, thank you.'),
(4, 4, 4, 7, 'Order arrived in perfect condition.'),
(5, 5, 5, 8, 'Excellent customer support.'),
(6, 6, 6, 3, 'Will definitely order again.'),
(7, 7, 7, 10, 'Great selection of products.'),
(8, 8, 8, 2, 'Hassle-free ordering experience.'),
(9, 9, 9, 7, 'The packaging was top-notch.'),
(10, 10, 10, 8, 'Prompt and reliable service.'),
(11, 11, 11, 10, 'Very user-friendly website.'),
(12, 12, 12, 2, 'Orders always arrive on time.'),
(13, 13, 13, 10, 'Highly recommend this service.'),
(14, 14, 14, 7, 'Superb attention to detail.'),
(15, 15, 15, 1, 'A pleasure to do business with.'),
(16, 16, 16, 9, 'Outstanding service quality.'),
(17, 17, 17, 8, 'My go-to for ordering online.'),
(18, 18, 18, 10, 'Top marks for communication.'),
(19, 19, 19, 10, 'Impressive turnaround time.'),
(20, 20, 20, 10, 'Thanks for the fantastic service!');

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `ShipmentID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ShipmentDate` date DEFAULT NULL,
  `ShippingAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`ShipmentID`, `OrderID`, `ShipmentDate`, `ShippingAddress`) VALUES
(1, 1, '2023-01-03', 'Main Street, Quezon City, Metro Manila'),
(2, 2, '2022-11-25', 'Elm Avenue, Makati City, Metro Manila'),
(3, 3, '2021-10-28', 'Oak Lane, Cebu City, Cebu'),
(4, 4, '2020-09-28', 'Palm Street, Davao City, Davao'),
(5, 5, '2021-08-29', 'Pine Road, Baguio City, Benguet'),
(6, 6, '2018-07-29', 'Maple Lane, Iloilo City, Iloilo'),
(7, 7, '2019-06-27', 'Birch Avenue, Bacolod City, Negros Occidental'),
(8, 8, '2016-05-28', 'Cedar Road, Zamboanga City, Zamboanga del Sur'),
(9, 9, '2017-04-29', 'Redwood Street, Angeles City, Pampanga'),
(10, 10, '2021-03-30', 'Sequoia Avenue, Cagayan de Oro City, Misamis Oriental'),
(11, 11, '2020-10-20', 'Willow Lane, Antipolo City, Rizal'),
(12, 12, '2023-01-17', 'Spruce Road, General Santos City, South Cotabato'),
(13, 13, '2020-12-19', 'Fir Street, Naga City, Camarines Sur'),
(14, 14, '2022-04-19', 'Poplar Lane, San Fernando City, La Union'),
(15, 15, '0000-00-00', 'Sycamore Road, Tarlac City, Tarlac'),
(16, 16, '2022-06-19', 'Chestnut Avenue, Lipa City, Batangas'),
(17, 17, '2018-07-30', 'Acacia Lane, Olongapo City, Zambales'),
(18, 18, '2019-08-25', 'Laurel Street, San Pedro City, Laguna'),
(19, 19, '2017-03-06', 'Juniper Road, Calamba City, Laguna'),
(20, 20, '2022-11-09', 'Dogwood Lane, Malolos City, Bulacan');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(100) DEFAULT NULL,
  `ContactName` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Email`, `PhoneNumber`) VALUES
(1, 'SportsGearPro Suppliers', 'John Smith', 'SportsGear@gmail,com', '+63-912-345-678'),
(2, 'VictorySports Merchandising', 'Sarah Anderson', 'VictorySports@gmail,com', '+63-917-890-123'),
(3, 'AthleticEdge Distributors', 'Michael Davis', 'AthleticEdge@gmail,com', '+63-926-456-789'),
(4, 'EliteSportswear Imports', 'Emily Johnson', 'EliteSportswear@gmail,com', '+63-933-567-123'),
(5, 'GameTime Equipment Co.', 'David Brown', 'GameTime@gmail,com', '+63-949-234-567'),
(6, 'PowerPlay Sports Suppliers', 'Jessica White', 'PowerPlay@gmail,com', '+63-915-678-901'),
(7, 'ChampionSports Direct', 'Daniel Lee', 'Champion@gmail,com', '+63-920-345-678'),
(8, 'AllStar Athletic Goods', 'Olivia Parker', 'AllStar@gmail,com', '+63-927-890-123'),
(9, 'SportFusion International', 'William Taylor', 'SportFusion@gmail,com', '+63-935-456-789'),
(10, 'SportsMaster Wholesale', 'Jennifer Adams', 'SportsMaster@gmail,com', '+63-947-567-123'),
(11, 'TurboCharge Sports Supplies', 'Robert Wilson', 'TurboCharge@gmail,com', '+63-913-234-567'),
(12, 'ProActive Sports Solutions', 'Amanda Hall', 'ProActive@gmail,com', '+63-918-678-901'),
(13, 'PlayHard Sports Imports', 'Richard Martinez', 'PlayHard@gmail,com', '+63-923-345-678'),
(14, 'SportsEra Trading Company', 'Lisa Turner', 'SportsEra@gmail,com', '+63-928-890-123'),
(15, 'Endurance Sports Distributors', 'Kevin Mitchell', 'Endurance@gmail,com', '+63-936-456-789'),
(16, 'SportsUniverse Suppliers', 'Samantha Harris', 'SportsUniverse@gmail,com', '+63-948-567-123'),
(17, 'PeakPerformance Gear', 'Christopher Evans', 'PeakPerformance@gmail,com', '+63-914-234-567'),
(18, 'XtremeSports Essentials', 'Megan Reed', 'XtremeSports@gmail,com', '+63-919-678-901'),
(19, 'SportElite Wholesale Co.', 'Joseph Carter', 'SportElite@gmail,com', '+63-924-345-678'),
(20, 'GearUp Sportswear Distributors', 'Laura Baker', 'GearUp@gmail,com', '+63-929-890-123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`OrderItemID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`ShipmentID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
