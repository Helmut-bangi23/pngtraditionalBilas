-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 02:56 AM
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
-- Database: `myapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_product`
--

CREATE TABLE `add_product` (
  `ID` int(5) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pprice` int(10) NOT NULL,
  `pimg` varchar(100) NOT NULL,
  `pquantity` int(20) NOT NULL,
  `pdesc` varchar(200) NOT NULL,
  `prating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_product`
--

INSERT INTO `add_product` (`ID`, `pname`, `pprice`, `pimg`, `pquantity`, `pdesc`, `prating`) VALUES
(11, 'Nacklace', 34, '3-removebg-preview.png', 5, 'wasu made necklaces ', 0),
(12, 'armband', 30, 'necklace.jfif', 2, 'Made with dogs tooth', 0),
(13, 'headdress', 102, '2-removebg-preview (1).png', 3, 'bird-of-paradise features', 0),
(14, 'Bena bena headdress ', 145, 'cassowary-removebg-preview.png', 1, 'Bena bena headdress made of cassowary feathers and is from EHP', 0),
(15, 'Kumul', 34, '3-removebg-preview.png', 1, 'feathers', 0),
(16, 'muruk headdress', 24, 'cassowary-removebg-preview.png', 1, 'From SO', 0),
(17, 'Morobe Grass dress', 56, 'morobeLadies.JPG', 1, 'Full traditional costume for Morobe Mamas ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(5) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID`, `product_name`, `product_price`, `product_image`, `product_desc`) VALUES
(37, 'Nacklace', 34, '3-removebg-preview.png', 'wasu made necklaces '),
(38, 'Morobe Grass dress', 56, 'morobeLadies.JPG', 'Full traditional costume for Morobe Mamas ');

-- --------------------------------------------------------

--
-- Table structure for table `ordered`
--

CREATE TABLE `ordered` (
  `ID` int(10) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_mail` varchar(50) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_price` int(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'ordered',
  `Delivery_Date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ordered`
--

INSERT INTO `ordered` (`ID`, `customer_name`, `customer_mail`, `customer_address`, `product_name`, `product_price`, `product_image`, `status`, `Delivery_Date`) VALUES
(7, 'helmut Bangi', 'bh@gmail.com', 'bumayong', 'Nacklace', 34, '3-removebg-preview.png', 'ordered', '2025-08-20'),
(8, 'helmut Bangi', 'bh@gmail.com', 'bumayong', 'headdress', 102, '2-removebg-preview (1).png', 'ordered', '2025-08-20'),
(9, 'Lazarus Steven', 'ls@example.com', 'AHI', 'armband', 30, 'necklace.jfif', 'ordered', '2025-08-22'),
(10, 'Lazarus Steven', 'ls@example.com', 'AHI', 'headdress', 102, '2-removebg-preview (1).png', 'ordered', '2025-08-22'),
(11, 'Lazarus Steven', 'ls@example.com', 'AHI', 'Nacklace', 34, '3-removebg-preview.png', 'ordered', '2025-08-22'),
(12, 'helmut Bangi', 'hbangi@example', 'Bumayong', 'Nacklace', 34, '3-removebg-preview.png', 'ordered', '2025-08-28'),
(13, 'helmut Bangi', 'hbangi@example', 'Bumayong', 'armband', 30, 'necklace.jfif', 'ordered', '2025-08-28'),
(14, 'Hele', 'hele@example.com', 'bumayong', 'Nacklace', 34, '3-removebg-preview.png', 'ordered', '2025-09-03'),
(17, 'Lazarus Steven', 'ls@gmail.com', 'lsteven@example.com', 'Nacklace', 34, '3-removebg-preview.png', 'ordered', '2025-09-03'),
(18, 'Lazarus Steven', 'ls@gmail.com', 'lsteven@example.com', 'armband', 30, 'necklace.jfif', 'ordered', '2025-09-03'),
(19, 'Mr. Mathew', 'amather@gmail.com', 'dwu', 'Nacklace', 34, '3-removebg-preview.png', 'ordered', '2025-09-10'),
(20, 'Mr. Mathew', 'amather@gmail.com', 'dwu', 'armband', 30, 'necklace.jfif', 'ordered', '2025-09-10'),
(21, 'Mr. Mathew', 'amather@gmail.com', 'dwu', 'headdress', 102, '2-removebg-preview (1).png', 'ordered', '2025-09-10'),
(22, 'helmut Bangi', 'ueuetyu', 'hsh', 'muruk headdress', 24, 'cassowary-removebg-preview.png', 'ordered', '2025-09-11'),
(23, 'helmut Bangi', 'ueuetyu', 'hsh', 'armband', 30, 'necklace.jfif', 'ordered', '2025-09-11');

-- --------------------------------------------------------

--
-- Table structure for table `otp_requests`
--

CREATE TABLE `otp_requests` (
  `id` int(11) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `otp_hash` varchar(255) NOT NULL,
  `purpose` varchar(50) DEFAULT 'login',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `expires_at` datetime NOT NULL,
  `attempts` int(11) DEFAULT 0,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=koi8r COLLATE=koi8r_general_nopad_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `customer_mail` varchar(30) NOT NULL,
  `customer_phone` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `customer_name`, `customer_mail`, `customer_phone`, `username`, `password`) VALUES
(3, 'Helmut Bangi', 'hgbangi22@gmail.com', 74576561, 'Hele', 'hele123'),
(4, 'Lazarus Steven', 'ls@gmail.com', 763254434, 'lazii', 'lazii123'),
(5, 'Mawat Banu', 'mbanu@gmail.com', 5314133, 'Mawat', 'mawat12'),
(6, 'Enoch Wimbera', 'ewimbera@gmail.com', 56234614, 'Enoch', 'enoch123'),
(7, 'Mr. Mathew', 'amather@gmail.com', 564165745, 'math', 'math123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_product`
--
ALTER TABLE `add_product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ordered`
--
ALTER TABLE `ordered`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `otp_requests`
--
ALTER TABLE `otp_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipient` (`recipient`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_product`
--
ALTER TABLE `add_product`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `ordered`
--
ALTER TABLE `ordered`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `otp_requests`
--
ALTER TABLE `otp_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
