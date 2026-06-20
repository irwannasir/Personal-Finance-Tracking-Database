-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 21, 2026 at 02:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `financetrackingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT_ID` int(11) NOT NULL,
  `PERSON_ID` int(11) NOT NULL,
  `ACCOUNT_NAME` varchar(50) NOT NULL,
  `ACCOUNT_TYPE` varchar(10) DEFAULT NULL,
  `ACCOUNT_BALANCE` decimal(12,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNT_ID`, `PERSON_ID`, `ACCOUNT_NAME`, `ACCOUNT_TYPE`, `ACCOUNT_BALANCE`) VALUES
(1, 1, 'Akaun Gaji', 'Checking', 4200.00),
(2, 2, 'Tabung Haji', 'Savings', 15000.75),
(3, 3, 'Simpanan Pendidikan', 'Savings', 800.00),
(4, 4, 'Akaun Bisnes', 'Business', 12450.20),
(5, 5, 'Belanja Dapur', 'Checking', 450.00),
(6, 6, 'Dana Kecemasan', 'Savings', 3000.00),
(7, 7, 'Tabung Cuti', 'Savings', 1200.25),
(8, 8, 'Akaun Pelaburan', 'Investment', 7500.00),
(9, 9, 'Wang Saku', 'Cash', 100.00),
(21, 0, 'Simpanan Peribadi', 'Savings', 2500.50);

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE `budget` (
  `BUDGET_ID` int(11) NOT NULL,
  `ACCOUNT_ID` int(11) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `AMOUNT_LIMIT` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`BUDGET_ID`, `ACCOUNT_ID`, `START_DATE`, `END_DATE`, `AMOUNT_LIMIT`) VALUES
(0, 1, '2025-01-01', '2025-01-31', 300.00),
(1, 2, '2025-01-01', '2025-01-31', 200.00),
(2, 3, '2025-02-01', '2025-02-28', 150.00),
(3, 4, '2025-02-01', '2025-02-28', 400.00),
(4, 5, '2025-03-01', '2025-03-31', 900.00),
(5, 6, '2025-03-01', '2025-03-31', 250.00),
(6, 7, '2025-04-01', '2025-04-30', 500.00),
(7, 8, '2025-04-01', '2025-04-30', 100.00),
(8, 9, '2025-05-01', '2025-05-31', 750.00),
(9, 21, '2025-05-01', '2025-05-31', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` varchar(5) NOT NULL,
  `PERSON_ID` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(20) DEFAULT NULL,
  `CATEGORY_TYPE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `PERSON_ID`, `CATEGORY_NAME`, `CATEGORY_TYPE`) VALUES
('C0', 0, 'Food', 'Expense'),
('C1', 1, 'House Rent', 'Fixed'),
('C2', 2, 'Taxes', 'Mandatory'),
('C3', 3, 'Fuel', 'Transport'),
('C4', 4, 'Electricity', 'Utility'),
('C5', 5, 'Movies', 'Leisure'),
('C6', 6, 'Holiday Fund', 'Saving'),
('C7', 7, 'Medical', 'Health'),
('C8', 8, 'Insurance', 'Fixed'),
('C9', 9, 'Charity', 'Giving');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `PERSON_ID` int(11) NOT NULL,
  `PERSON_NAME` varchar(50) NOT NULL,
  `PERSON_EMAIL` varchar(50) NOT NULL,
  `PERSON_PASSWORD` varchar(10) NOT NULL,
  `PERSON_CURRENCY` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`PERSON_ID`, `PERSON_NAME`, `PERSON_EMAIL`, `PERSON_PASSWORD`, `PERSON_CURRENCY`) VALUES
(0, 'Ahmad Bakri', 'ahmad.b@email.my', 'Bakri123!', 'MYR'),
(1, 'Siti Aminah', 'siti.a@email.my', 'Siti@2025', 'MYR'),
(2, 'Mohd Faisal', 'faisal.m@email.my', 'Fais!99', 'MYR'),
(3, 'Nurul Izzah', 'nurul.i@email.my', 'Izzah786', 'MYR'),
(4, 'Khairul Anwar', 'khairul.a@email.my', 'KAnwar88', 'MYR'),
(5, 'Nor Syahira', 'syahira.n@email.my', 'Syahira9', 'MYR'),
(6, 'Azlan Shah', 'azlan.s@email.my', 'AzlanS77', 'MYR'),
(7, 'Farrah Hana', 'farrah.h@email.my', 'Hana#2024', 'MYR'),
(8, 'Zulkifli Ali', 'zul.ali@email.my', 'ZulAli10', 'MYR'),
(9, 'Aisyah Humaira', 'aisyah.h@email.my', 'Humaira@1', 'MYR');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TRANSACTION_ID` int(10) NOT NULL,
  `ACCOUNT_ID` int(11) NOT NULL,
  `CATEGORY_ID` varchar(5) NOT NULL,
  `PERSON_ID` int(11) NOT NULL,
  `AMOUNT` decimal(12,2) DEFAULT 0.00,
  `TRANSACTION_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TRANSACTION_ID`, `ACCOUNT_ID`, `CATEGORY_ID`, `PERSON_ID`, `AMOUNT`, `TRANSACTION_DATE`) VALUES
(0, 0, 'C0', 0, 45.50, '2025-01-05'),
(1, 1, 'C1', 1, 800.00, '2025-01-01'),
(2, 2, 'C2', 2, 150.00, '2025-01-10'),
(3, 3, 'C3', 3, 60.25, '2025-01-12'),
(4, 4, 'C4', 4, 120.00, '2025-01-15'),
(5, 5, 'C5', 5, 35.00, '2025-01-18'),
(6, 6, 'C6', 6, 200.00, '2025-01-20'),
(7, 7, 'C7', 7, 95.00, '2025-01-22'),
(8, 8, 'C8', 8, 300.00, '2025-01-25'),
(9, 9, 'C9', 9, 20.00, '2025-01-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT_ID`),
  ADD KEY `PERSON_ID` (`PERSON_ID`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`BUDGET_ID`),
  ADD KEY `budget_ibfk_1` (`ACCOUNT_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`),
  ADD KEY `PERSON_ID` (`PERSON_ID`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`PERSON_ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TRANSACTION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `PERSON_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`ACCOUNT_ID`) REFERENCES `account` (`ACCOUNT_ID`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`PERSON_ID`) REFERENCES `person` (`PERSON_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
