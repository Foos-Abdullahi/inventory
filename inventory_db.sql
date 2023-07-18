-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 06:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Addbranch` (IN `in_bra_name` VARCHAR(99), IN `in_address` VARCHAR(99))   BEGIN
    INSERT INTO BRANCH( bra_name, address)
    VALUES( in_bra_name, in_address);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addcategory` (IN `in_cat_name` VARCHAR(99), IN `in_date` DATE)   BEGIN
    INSERT INTO CATEGORY( cat_name, date)
    VALUES( in_cat_name, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addcustomer` (IN `in_cust_name` VARCHAR(99), IN `in_cust_phone` VARCHAR(99), IN `in_cust_address` VARCHAR(99), IN `in_cust_date` DATE)   BEGIN
    INSERT INTO CUSTOMER( cust_name, cust_phone, cust_address, cust_date)
    VALUES( in_cust_name, in_cust_phone, in_cust_address, in_cust_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addemployee` (IN `in_emp_name` VARCHAR(99), IN `in_emp_tell` VARCHAR(99), IN `in_emp_address` VARCHAR(99), IN `in_emp_title` VARCHAR(99), IN `in_user_id` INT, IN `in_bra_id` INT, IN `in_date` DATE)   BEGIN
    INSERT INTO EMPLOYEE(emp_name, emp_tell, emp_address, emp_title, user_id, bra_id, date)
    VALUES(in_emp_name, in_emp_tell, in_emp_address, in_emp_title, in_user_id, in_bra_id, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addorder` (IN `in_pro_id` INT, IN `in_qty` INT, IN `in_price` DOUBLE, IN `in_total` DOUBLE, IN `in_cust_id` INT, IN `in_date` DATE)   BEGIN
    INSERT INTO `ORDERS`(pro_id, Qty, price, total, cust_id, date)
    VALUES( in_pro_id, in_qty, in_price, in_total, in_cust_id, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addproduct` (IN `in_quantity` INT, IN `in_price` DOUBLE, IN `in_category` INT, IN `in_remained_quantity` INT, IN `in_user_id` INT, IN `in_date` DATE)   BEGIN
    INSERT INTO PRODUCT(  Quantity, price, category, remained_quantity, user_id, date)
    VALUES(  in_quantity, in_price, in_category, in_remained_quantity, in_user_id, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addpurchase` (IN `in_product_name` VARCHAR(99), IN `in_quantity` INT, IN `in_price` DOUBLE, IN `in_total` DOUBLE, IN `in_supp_id` INT, IN `in_user_id` INT, IN `in_date` DATE)   BEGIN
    INSERT INTO PURCHASE( product_name, Quantity, price, Total, supp_id, user_id, date)
    VALUES(in_product_name, in_quantity, in_price, in_total, in_supp_id, in_user_id, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addrole` (IN `in_role_name` VARCHAR(99), IN `in_date` DATE)   BEGIN
    INSERT INTO ROLE( role_name, date)
    VALUES( in_role_name, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Addsupplier` (IN `in_supp_name` VARCHAR(99), IN `in_supp_address` VARCHAR(99), IN `in_supp_tell` VARCHAR(99), IN `in_user_id` INT, IN `in_date` DATE)   BEGIN
    INSERT INTO SUPPLIER( supp_name, supp_address, supp_tell, user_id, date)
    VALUES( in_supp_name, in_supp_address, in_supp_tell, in_user_id, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Adduser` (IN `in_username` VARCHAR(99), IN `in_password` VARCHAR(99), IN `in_emp_id` INT, IN `in_role_id` INT, IN `in_date` DATE)   BEGIN
    INSERT INTO USERS( username, password, emp_id, role_id, date)
    VALUES( in_username, in_password, in_emp_id, in_role_id, in_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deletebranch` (IN `inid` INT)   DELETE FROM branch WHERE bra_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCategory` (IN `inid` INT)   DELETE FROM category
  WHERE cat_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteCustomer` (IN `inid` INT)   DELETE FROM customer WHERE cust_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteEmp` (IN `in_Emp_id` INT)   BEGIN
    DELETE FROM employee WHERE emp_id = in_Emp_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteOrder` (IN `inid` INT)   BEGIN
    DELETE FROM orders WHERE or_id = inid;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteProducts` (IN `inid` INT)   DELETE FROM product WHERE pro_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deletePurchase` (IN `inid` INT)   DELETE FROM purchase WHERE pur_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleterole` (IN `inid` INT)   DELETE FROM role WHERE role_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteSupplier` (IN `inid` INT)   DELETE FROM supplier WHERE supp_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Deleteuser` (IN `in_user_id` INT)   BEGIN
    DELETE FROM USERS WHERE user_id = in_user_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBranch` ()   SELECT * FROM branch$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllCategorys` ()   SELECT * FROM category$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllCustomer` ()   SELECT * FROM customer$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllEmp` ()   select * from employee$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllOrder` ()   select * from orders$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllProducts` ()   SELECT * FROM product$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPurchase` ()   SELECT * FROM purchase$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllRoles` ()   SELECT * FROM role$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSupplier` ()   SELECT * FROM supplier$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllusers` ()   BEGIN
    SELECT * FROM USERS;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetByIdbranch` (IN `inid` INT)   SELECT * FROM branch WHERE bra_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetByIdCategorys` (IN `inid` INT)   SELECT * FROM category WHERE cat_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBYidOrder` (IN `inid` INT)   SELECT * FROM orders WHERE or_id = inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetByidProducts` (IN `inid` INT)   SELECT * FROM product WHERE pro_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetByIdPurchase` (IN `inid` INT)   SELECT * FROM purchase WHERE pur_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getbyidRole` (IN `inid` INT)   SELECT * FROM role WHERE role_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetByIdSupplier` (IN `inid` INT)   SELECT * FROM supplier WHERE supp_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCustomerByID` (IN `inid` INT)   SELECT * FROM customer WHERE cust_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmp_ByID` (IN `in_Emp_id` INT)   BEGIN
    SELECT * FROM employee WHERE emp_id = in_Emp_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetuserById` (IN `in_user_id` INT)   BEGIN
    SELECT * FROM USERS WHERE user_id = in_user_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Updatebranch` (IN `inid` INT, IN `inbra_name` VARCHAR(100), IN `inaddress` VARCHAR(100))   UPDATE branch
set bra_name=inbra_name, address=inaddress WHERE bra_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCategory` (IN `inid` INT, IN `incat_name` VARCHAR(100))   UPDATE category
set cat_name=incat_name WHERE cat_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Updatecustomer` (IN `incust_id` VARCHAR(100), IN `incust_name` VARCHAR(99), IN `incust_phone` VARCHAR(100), IN `incust_address` VARCHAR(100))   UPDATE customer
set cust_name=incust_name, cust_phone=incust_phone, cust_address=incust_address WHERE cust_id=incust_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateEmp` (IN `inemp_id` INT, IN `inemp_name` VARCHAR(100), IN `inemp_tell` VARCHAR(100), IN `inemp_address` VARCHAR(100), IN `emp_title` VARCHAR(100), IN `inuser_id` INT, IN `inbra_id` INT)   UPDATE employee
SET emp_name=inemp_name,emp_tell=inemp_tell, 
emp_address=inemp_address, emp_title=inemp_title,
user_id=inuser_id,bra_id=inbra_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateOrder` (IN `or_id` INT, IN `inpro_id` INT, IN `inQty` INT, IN `inprice` DOUBLE, IN `intotal` DOUBLE, IN `incust_name` INT)   UPDATE orders
SET pro_id=inpro_id, 
Qty=inQty, price=inprice,
total=intotal,cust_id=incust_name where or_id = or_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateProducts` (IN `inid` INT, IN `inpur_id` INT, IN `inQuantity` INT, IN `inprice` DOUBLE, IN `incategory` VARCHAR(100), IN `inremained_quantity` INT, IN `inuser_id` INT)   UPDATE product
set pur_id=inpur_id, Quantity=inQuantity, price=inprice,
category=incategory, remained_quantity=inremained_quantity, user_id=inuser_id
WHERE pro_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdatePurchase` (IN `inid` INT, IN `inproduct_name` VARCHAR(100), IN `inQuantity` DOUBLE, IN `inprice` DOUBLE, IN `inTotal` DOUBLE, IN `insupp_id` INT, IN `inuser_id` INT)   UPDATE purchase
set product_name=inproduct_name,Quantity=inQuantity,price=inprice,
Total= inTotal,supp_id=insupp_id,user_id=inuser_id WHERE pur_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateRole` (IN `inid` INT, IN `inrole_name` VARCHAR(100))   UPDATE role
SET role_name=inrole_name WHERE role_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSupplier` (IN `inid` INT, IN `insupp_name` VARCHAR(100), IN `insupp_address` VARCHAR(100), IN `insupp_tell` VARCHAR(100), IN `inuser_id` INT)   UPDATE supplier
set supp_name=insupp_name, supp_address=insupp_address,supp_tell=insupp_tell,user_id=inuser_id WHERE supp_id=inid$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateuser` (IN `in_user_id` INT, IN `in_username` VARCHAR(99), IN `in_password` VARCHAR(99))   BEGIN
    UPDATE users SET username = in_username, password = in_password WHERE user_id = in_user_id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bra_id` int(11) NOT NULL,
  `bra_name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`bra_id`, `bra_name`, `address`) VALUES
(1, 'Labeyk_2', 'Digfeer');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `date`) VALUES
(0, 'Electronics', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(50) DEFAULT NULL,
  `cust_phone` varchar(20) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `bra_id` int(11) DEFAULT NULL,
  `cust_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_phone`, `cust_address`, `bra_id`, `cust_date`) VALUES
(1, 'Ahemd A', '611', 'Hodan', NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) DEFAULT NULL,
  `emp_tell` varchar(20) DEFAULT NULL,
  `emp_address` varchar(100) DEFAULT NULL,
  `emp_title` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bra_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_tell`, `emp_address`, `emp_title`, `user_id`, `bra_id`, `date`) VALUES
(1, 'Abdalla Shueyb', '617', 'Madina', 'Manager', 0, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `or_id` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` float DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`or_id`, `pro_id`, `Qty`, `price`, `total`, `cust_id`, `date`) VALUES
(0, 1, 2, 200, 400, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(11) NOT NULL,
  `pur_id` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `remained_quantity` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pur_id`, `Quantity`, `price`, `category`, `remained_quantity`, `user_id`, `date`) VALUES
(1, NULL, 13, 200, 0, 1, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `pur_id` int(11) NOT NULL,
  `product_name` varchar(99) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `Total` float DEFAULT NULL,
  `supp_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`pur_id`, `product_name`, `Quantity`, `price`, `Total`, `supp_id`, `user_id`, `date`) VALUES
(1, '0', 13, 200, 2600, 0, 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `date`) VALUES
(1, 'Manager', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(11) NOT NULL,
  `supp_name` varchar(50) DEFAULT NULL,
  `supp_address` varchar(100) DEFAULT NULL,
  `supp_tell` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_tell`, `user_id`, `date`) VALUES
(0, 'Juba', 'Hodan', '6118', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `emp_id`, `role_id`, `date`) VALUES
(1, 'A', 'B', 1, 1, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bra_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD KEY `branch_id` (`bra_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `FK_EMPLOYEE_USER` (`user_id`),
  ADD KEY `FK_EMPLOYEE_BRANCH` (`bra_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`or_id`),
  ADD KEY `FK_ORDER_PRODUCT` (`pro_id`),
  ADD KEY `FK_ORDER_CUST` (`cust_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `FK_PRODUCT_PURCHASE` (`pur_id`),
  ADD KEY `FK_PRODUCT_Cat` (`category`),
  ADD KEY `FK_PRODUCT_USER` (`user_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pur_id`),
  ADD KEY `FK_PURCHASE_SUPPLIER` (`supp_id`),
  ADD KEY `FK_PURCHASE_USER` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`),
  ADD KEY `FK_SUPPLIER_USER` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_USER_ROLE` (`role_id`),
  ADD KEY `FK_USER_EMPLOYEE` (`emp_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `branch_id` FOREIGN KEY (`bra_id`) REFERENCES `branch` (`bra_id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_EMPLOYEE_BRANCH` FOREIGN KEY (`bra_id`) REFERENCES `branch` (`bra_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_ORDER_CUST` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `FK_ORDER_PRODUCT` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_PRODUCT_Cat` FOREIGN KEY (`category`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `FK_PRODUCT_PURCHASE` FOREIGN KEY (`pur_id`) REFERENCES `purchase` (`pur_id`),
  ADD CONSTRAINT `FK_PRODUCT_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK_PURCHASE_SUPPLIER` FOREIGN KEY (`supp_id`) REFERENCES `supplier` (`supp_id`),
  ADD CONSTRAINT `FK_PURCHASE_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `FK_SUPPLIER_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_USER_EMPLOYEE` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`),
  ADD CONSTRAINT `FK_USER_ROLE` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
