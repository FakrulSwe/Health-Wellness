-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 08:50 AM
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
-- Database: `medicineguide`
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
(1, 'Rupok', '123', '');

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

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`amId`, `hospitalAddress`, `amRegion`, `hospitalName`) VALUES
(1, 'mirpur,Dhaka', 'mirpur', 'asd'),
(2, 'aaa', 'aaa', 'aaa'),
(3, 'aa', 'Banani', 'aa'),
(4, 'sdf', 'Banani', 'sdf');

-- --------------------------------------------------------

--
-- Table structure for table `ambulsignup`
--

CREATE TABLE `ambulsignup` (
  `Amid` int(11) NOT NULL,
  `HosName` varchar(40) NOT NULL,
  `Mail` varchar(40) NOT NULL,
  `AmMobile` varchar(14) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `AmNumber` varchar(10) NOT NULL,
  `AmRegion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('rupok.swe@gmail.com', '01631590361', 'Noakhali', 'Rupok', 4),
('Fokhrul@gmail.com', '01631590361', 'Noakhali', 'Fokhrul', 5),
('Amin@gmail.com', '01631590361', 'Noakhali', 'Amin', 7),
('C@gmail.com', '01631590361', 'Noakhali', 'Customer', 9),
('Lubna@gmail.com', '01631590361', 'Comilla', 'Lubna', 10),
('saifjwl@gmail.com', '01631590361', 'zdv', 'we', 13);

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
('Rupok', '123456', 4),
('Fokhrul', '123456', 5),
('Amin', '123456', 7),
('Customer', '12345', 9),
('Lubna', '12345', 10),
('we', '12345', 13);

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
('Meherab Hossain', '01632145879', 'Mirpur', 7, '123456');

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
(92, '1.Napa', 1, '20', '', 'sdf', '01424242524', 'sdsdv', 'Uttara'),
(93, '1.Napa', 1, '20', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(94, '1.Napa', 1, '20', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(95, 'glukon', 1, '40', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(96, '1.Napa', 3, '20', '', 'zdzd', '01631590361', 'zdv', 'Uttara'),
(97, '2.ace', 1, '30', '', 'zdzd', '01631590361', 'zdv', 'Uttara'),
(98, '3.mig', 1, '300', '', 'zdzd', '01631590361', 'zdv', 'Uttara'),
(99, 'histacin', 1, '20', '', 'zdzd', '01631590361', 'zdv', 'Uttara'),
(100, 'unifok', 1, '60', '', 'zdzd', '01631590361', 'zdv', 'Uttara'),
(101, '1.Napa', 4, '20', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(102, '2.ace', 1, '30', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(103, '3.mig', 1, '300', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(104, 'histacin', 1, '20', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(105, 'unifok', 1, '60', '', 'Rupok', '01631590361', 'Noakhali', 'Uttara'),
(106, '1.Napa', 1, '20', '', 'Lubna', '01631590361', 'Comilla', 'Uttara'),
(107, '2.ace', 1, '30', '', 'Lubna', '01631590361', 'Comilla', 'Uttara');

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
(7, 'Fokhrul Islam', '01631590361', 'dhanmondi 32', 'Dhanmondi'),
(8, 'Owsud', '01631590361', 'Noakhali', 'Mirpur'),
(10, 'Pharmacy', '01631590361', 'Noakhali', 'Bashundhara');

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
('ph3', 12345, 5),
('Fokhrul Islam', 123456, 7),
('Owsud', 123456, 8),
('Pharmacy', 12345, 10),
('dfb', 0, 11);

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
  MODIFY `amId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customerlogin`
--
ALTER TABLE `customerlogin`
  MODIFY `cuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `deId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `medicineorder`
--
ALTER TABLE `medicineorder`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `pharmacylogin`
--
ALTER TABLE `pharmacylogin`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
