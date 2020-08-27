-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 08:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `health&wellness`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adId` int(11) NOT NULL,
  `aUserName` varchar(40) NOT NULL,
  `aPassword` varchar(40) NOT NULL,
  `aMobile` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adId`, `aUserName`, `aPassword`, `aMobile`) VALUES
(1, 'admin', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `amId` int(11) NOT NULL,
  `hospitalAddress` varchar(40) NOT NULL,
  `amRegion` varchar(40) NOT NULL,
  `hospitalName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulogin`
--

CREATE TABLE `ambulogin` (
  `AmUserName` varchar(40) NOT NULL,
  `amPassword` int(11) NOT NULL,
  `Amid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulogin`
--

INSERT INTO `ambulogin` (`AmUserName`, `amPassword`, `Amid`) VALUES
('Rupok', 12345, 1),
('Lubna', 12345, 2),
('Health Hospital', 12345, 3),
('Wealth Good Hospital', 12345, 4),
('Life Hospital', 12345, 5),
('United Hospital', 12345, 6),
('ami', 12345, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ambulsignup`
--

CREATE TABLE `ambulsignup` (
  `Amid` int(11) NOT NULL,
  `HosName` varchar(40) NOT NULL,
  `Mail` varchar(40) NOT NULL,
  `AmMobile` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `AmNumber` varchar(10) NOT NULL,
  `AmRegion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulsignup`
--

INSERT INTO `ambulsignup` (`Amid`, `HosName`, `Mail`, `AmMobile`, `Address`, `AmNumber`, `AmRegion`) VALUES
(1, 'Rupok', 'saifjwl@gmail.com', '01631590361', 'Dhaka', '1234', 'Mirpur'),
(2, 'Lubna', 'Lubna@gmail.com', '01631590361', 'Dhaka', '1234', 'Mirpur'),
(3, 'Health Hospital', 'Health@gmail.com', '01631590361', 'Nokhali', '74123', 'Bashundhara'),
(4, 'Wealth Good Hospital', 'Wealth@gmail.com', '01631590361', 'Comilla', '98753', 'Uttara'),
(5, 'Life Hospital', 'Life@gmail.com', '01631590361', 'Chittagong', '899562', 'Dhanmondi'),
(6, 'United Hospital', 'United@gmail.com', '01631590361', 'Barisal', '9542300', 'Bashundhara'),
(7, 'ami', 'ami@gmail.com', '01631590361', 'Nokhali', '98753', 'Mirpur');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cuEmail` varchar(40) NOT NULL,
  `cuMobile` varchar(40) NOT NULL,
  `cuAddress` varchar(40) NOT NULL,
  `cuName` varchar(40) NOT NULL,
  `cuId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cuEmail`, `cuMobile`, `cuAddress`, `cuName`, `cuId`) VALUES
('aa@ff.com', '1234', 'aaa', 'asd', 1),
('aw@ff.com', '1234', 'asd', 'aaa', 2),
('asd@sdf.com', '01712020202', 'sffd', 'dgdfg', 3),
('Customer@gmail.com', '01631590361', 'Noakhali', 'Customer', 4),
('saifjwl@gmail.com', '01631590361', 'Noakhali', 'Amin', 6),
('Dihan@gmail.com', '01631590361', 'Noakhali', 'Dihan', 7);

-- --------------------------------------------------------

--
-- Table structure for table `customerlogin`
--

CREATE TABLE `customerlogin` (
  `cuUserName` varchar(40) NOT NULL,
  `cuPassword` varchar(40) NOT NULL,
  `cuId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerlogin`
--

INSERT INTO `customerlogin` (`cuUserName`, `cuPassword`, `cuId`) VALUES
('asd', '12345', 1),
('aaa', '12345', 2),
('dgdfg', '12345', 3),
('Customer', '12345', 4),
('Amin', '12345', 6),
('Dihan', '12345', 7);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `deName` varchar(40) NOT NULL,
  `deMobile` varchar(40) NOT NULL,
  `deRegion` varchar(40) NOT NULL,
  `deId` int(11) NOT NULL,
  `dePass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`deName`, `deMobile`, `deRegion`, `deId`, `dePass`) VALUES
('del1', '01712021831', 'uttara', 6, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `price` int(11) NOT NULL,
  `medId` int(11) NOT NULL,
  `medName` varchar(40) NOT NULL,
  `scienteficName` varchar(40) NOT NULL,
  `diseaseCategory` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`price`, `medId`, `medName`, `scienteficName`, `diseaseCategory`) VALUES
(20, 1, '1.Napa', 'gg', 'fever'),
(30, 2, '2.ace', 'ff', 'fever'),
(300, 3, '3.mig', 'hh', 'migraine'),
(200, 4, '4.fenadin', 'cc', 'caugh'),
(30, 5, 'oxitocin', 'gayan', 'pain'),
(40, 6, 'glukon', 'gayan', 'fever'),
(60, 7, 'unifok', 'boxinotin', 'backpain'),
(20, 8, 'histacin', 'aaa', 'cold');

-- --------------------------------------------------------

--
-- Table structure for table `medicineorder`
--

CREATE TABLE `medicineorder` (
  `orderId` int(11) NOT NULL,
  `medicinename` varchar(50) NOT NULL,
  `medquantity` int(11) NOT NULL,
  `medprice` varchar(50) NOT NULL,
  `totalprice` varchar(50) NOT NULL,
  `ordercusname` varchar(50) NOT NULL,
  `orderphone` varchar(15) NOT NULL,
  `orderaddress` varchar(50) NOT NULL,
  `orderregion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicineorder`
--

INSERT INTO `medicineorder` (`orderId`, `medicinename`, `medquantity`, `medprice`, `totalprice`, `ordercusname`, `orderphone`, `orderaddress`, `orderregion`) VALUES
(1, '', 0, '', '', 'sdsf', '01712020202', 'dssdf', ''),
(81, '3.mig', 2, '300', '', 'sf', '01712020202', 'f', 'Mirpur'),
(82, '4.fenadin', 1, '200', '', 'sf', '01712020202', 'f', 'Mirpur'),
(83, '1.Napa', 1, '20', '', 'df', '01712020202', 'vv', 'Uttara'),
(84, '3.mig', 1, '300', '', 'df', '01712020202', 'vv', 'Uttara'),
(85, 'glukon', 1, '40', '', 'df', '01712020202', 'vv', 'Uttara'),
(86, 'unifok', 1, '60', '', 'df', '01712020202', 'vv', 'Uttara'),
(87, '2.ace', 2, '30', '', 'shafi', '01712020202', 'bbbbbbnnnnnnn', 'Banani'),
(88, '3.mig', 1, '300', '', 'shafi', '01712020202', 'bbbbbbnnnnnnn', 'Banani'),
(89, 'glukon', 1, '40', '', 'shafi', '01712020202', 'bbbbbbnnnnnnn', 'Banani'),
(90, 'histacin', 1, '20', '', 'shafi', '01712020202', 'bbbbbbnnnnnnn', 'Banani'),
(91, 'unifok', 1, '60', '', 'shafi', '01712020202', 'bbbbbbnnnnnnn', 'Banani'),
(92, '1.Napa', 1, '20', '', 'sdf', '01424242524', 'sdsdv', 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `pId` int(11) NOT NULL,
  `pName` varchar(40) NOT NULL,
  `phMobile` varchar(40) NOT NULL,
  `phAddress` varchar(40) NOT NULL,
  `pRegion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`pId`, `pName`, `phMobile`, `phAddress`, `pRegion`) VALUES
(3, 'ph1', '', 'aaaaaaaaa', 'Uttara'),
(4, 'ph2', '1234', 'aaa', 'Banani'),
(5, 'ph3', '01679537677', 'aaa', 'Mirpur');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacylogin`
--

CREATE TABLE `pharmacylogin` (
  `phUserName` varchar(40) NOT NULL,
  `phPassword` int(11) NOT NULL,
  `pId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacylogin`
--

INSERT INTO `pharmacylogin` (`phUserName`, `phPassword`, `pId`) VALUES
('ph1', 5678, 3),
('ph2', 12345, 4),
('ph3', 12345, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adId`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`amId`);

--
-- Indexes for table `ambulogin`
--
ALTER TABLE `ambulogin`
  ADD PRIMARY KEY (`Amid`),
  ADD KEY `AmUserName` (`AmUserName`);

--
-- Indexes for table `ambulsignup`
--
ALTER TABLE `ambulsignup`
  ADD PRIMARY KEY (`Amid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cuId`);

--
-- Indexes for table `customerlogin`
--
ALTER TABLE `customerlogin`
  ADD PRIMARY KEY (`cuId`),
  ADD UNIQUE KEY `cuUserName` (`cuUserName`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deId`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medId`);

--
-- Indexes for table `medicineorder`
--
ALTER TABLE `medicineorder`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `pharmacylogin`
--
ALTER TABLE `pharmacylogin`
  ADD PRIMARY KEY (`pId`),
  ADD UNIQUE KEY `phUserName` (`phUserName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `amId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ambulogin`
--
ALTER TABLE `ambulogin`
  MODIFY `Amid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customerlogin`
--
ALTER TABLE `customerlogin`
  MODIFY `cuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicineorder`
--
ALTER TABLE `medicineorder`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `pharmacylogin`
--
ALTER TABLE `pharmacylogin`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
