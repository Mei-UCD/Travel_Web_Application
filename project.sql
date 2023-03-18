-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 09:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_form`
--

CREATE TABLE `book_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `guests` int(255) NOT NULL,
  `arrivals` date NOT NULL,
  `leaving` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_form`
--

INSERT INTO `book_form` (`id`, `name`, `email`, `phone`, `address`, `location`, `guests`, `arrivals`, `leaving`) VALUES
(1, 'John Doe', 'Doe@gmail.com', '123456789', 'Dublin, Ireland', 'London', 2, '2022-11-22', '2022-11-27'),
(2, 'Anne Hathaway', 'Jane@gmail.com', '354565666', 'Dublin, Ireland', 'London', 5, '2022-12-08', '2022-12-11'),
(8, 'Angelina Jolie', 'Jolie@gmail.com', '543236859', 'America', 'London', 4, '2023-01-06', '2023-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Hilton'),
(2, 'Hyatt'),
(3, 'Holiday Inn'),
(4, 'Hampton Inn'),
(5, 'Marriott'),
(6, 'Double Tree'),
(7, 'Shangri-La'),
(8, 'InterContinental'),
(9, 'Embassy Suites'),
(10, 'Crowne Plaza'),
(11, 'Comfort'),
(12, 'Premier Inn');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flght_id` int(255) NOT NULL,
  `departure` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `flight_date` date NOT NULL,
  `flight_brand` int(255) NOT NULL,
  `flight_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flght_id`, `departure`, `destination`, `flight_date`, `flight_brand`, `flight_price`) VALUES
(1, 'New York', 'Los Angeles', '2022-11-01', 1, 100),
(2, 'New York', 'Los Angeles', '2022-11-02', 1, 120),
(3, 'New York', 'Los Angeles', '2022-11-03', 2, 90),
(4, 'New York', 'Los Angeles', '2022-11-04', 2, 100),
(5, 'New York', 'Los Angeles', '2022-11-05', 3, 60),
(6, 'New York', 'Chicago', '2022-11-06', 4, 50),
(7, 'New York', 'Chicago', '2022-11-07', 5, 80),
(8, 'New York', 'Chicago', '2022-11-08', 6, 70),
(9, 'New York', 'Houston', '2022-11-09', 7, 70),
(10, 'New York', 'Houston', '2022-11-10', 8, 30),
(11, 'New York', 'Houston', '2022-11-11', 9, 20),
(12, 'New York', 'Phoenix', '2022-11-12', 10, 100),
(13, 'New York', 'Phoenix', '2022-11-13', 11, 60),
(14, 'New York', 'Phoenix', '2022-11-14', 11, 60),
(15, 'New York', 'Phoenix', '2022-11-15', 12, 80),
(16, 'Los Angeles', 'Chicago', '2022-11-16', 14, 90),
(17, 'Los Angeles', 'Chicago', '2022-11-17', 13, 80),
(18, 'Los Angeles', 'Chicago', '2022-11-18', 15, 60),
(19, 'Los Angeles', 'New York', '2022-11-19', 16, 90),
(20, 'Los Angeles', 'New York', '2022-11-20', 17, 100),
(21, 'Los Angeles', 'New York', '2022-11-21', 18, 120),
(22, 'Los Angeles', 'New York', '2022-11-22', 19, 110),
(23, 'Los Angeles', 'Houston', '2022-11-23', 20, 80),
(24, 'Los Angeles', 'Houston', '2022-11-24', 19, 50),
(25, 'Los Angeles', 'Phoenix', '2022-11-25', 9, 60),
(26, 'Los Angeles', 'Phoenix', '2022-11-26', 7, 80),
(27, 'Chicago', 'New York', '2022-11-27', 14, 60),
(28, 'Chicago', 'New York', '2022-11-28', 17, 60),
(29, 'Chicago', 'Los Angeles', '2022-11-29', 1, 60),
(30, 'Chicago', 'Los Angeles', '2022-11-30', 20, 100),
(31, 'Chicago', 'Houston', '2022-11-01', 4, 60),
(32, 'Chicago', 'Houston', '2022-11-02', 13, 20),
(33, 'Chicago', 'Phoenix', '2022-11-03', 7, 50),
(34, 'Chicago', 'Phoenix', '2022-11-04', 20, 60),
(35, 'Houston', 'New York', '2022-11-05', 18, 60),
(36, 'Houston', 'Los Angeles', '2022-11-06', 8, 90),
(37, 'Houston', 'Chicago', '2022-11-07', 16, 60),
(38, 'Houston', 'Phoenix', '2022-11-08', 15, 100),
(39, 'Phoenix', 'New York', '2022-11-09', 1, 70),
(40, 'Phoenix', 'Los Angeles', '2022-11-10', 6, 100),
(41, 'Phoenix', 'Chicago', '2022-11-11', 12, 90),
(42, 'Phoenix', 'Houston', '2022-11-12', 9, 110),
(43, 'New York', 'Los Angeles', '2022-11-01', 20, 90),
(44, 'New York', 'Los Angeles', '2022-11-02', 5, 100),
(45, 'New York', 'Los Angeles', '2022-11-01', 15, 80);

-- --------------------------------------------------------

--
-- Table structure for table `flight_brand`
--

CREATE TABLE `flight_brand` (
  `flightbrand_id` int(255) NOT NULL,
  `flightbrand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_brand`
--

INSERT INTO `flight_brand` (`flightbrand_id`, `flightbrand_name`) VALUES
(1, 'Overnight Skies'),
(2, 'Oneworld Airlines'),
(3, 'Blue Line Club'),
(4, 'Aeroflow America'),
(5, 'Budget Airways'),
(6, 'Go Flyin’ Group'),
(7, 'Luxx Aircraft'),
(8, 'Keloha Air'),
(9, 'Adrenaline Airways'),
(10, 'Sun City Helicopters'),
(11, 'Airspace Extra'),
(12, 'Skywings Rheinmetall'),
(13, 'Sun Country Eagle'),
(14, 'Sideline Air'),
(15, 'Aerofly'),
(16, 'Vegas Jet'),
(17, 'All Nighters Travel'),
(18, 'Air France Flying'),
(19, 'Dawn Air'),
(20, 'Republic Airlines');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(255) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `brand` int(255) NOT NULL,
  `star` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `hotel_name`, `location`, `brand`, `star`) VALUES
(1, 'The Venetian', 'New York', 12, 4),
(2, 'Spotlight Hotel', 'Los Angeles', 11, 5),
(3, 'The Mississippi Hotel', 'Chicago', 10, 3),
(4, 'Green Tortoise Hostel', 'Houston', 9, 4),
(5, 'The Orchard Hotel', 'Phoenix', 8, 5),
(6, 'Spring Brook', 'Philadelphia', 7, 4),
(7, 'Hotel Agoura', 'San Antonio', 6, 3),
(8, 'Wonder Hill Inn', 'San Diego', 5, 5),
(9, 'The New Yorker', 'Dallas', 4, 3),
(10, 'Beachwalk Resort', 'San Jose', 3, 4),
(11, 'Etiquette Suites', 'New York', 2, 5),
(12, 'Water Vibe Resorts', 'Los Angeles', 1, 4),
(13, 'Consulate Hotel', 'Chicago', 11, 5),
(14, 'Quaint Motel', 'Houston', 10, 3),
(15, 'Cape Grace', 'Phoenix', 6, 4),
(16, 'Fountain Fun', 'New York', 9, 4),
(17, 'Element', 'Los Angeles', 4, 5),
(18, 'The New View', 'Chicago', 1, 5),
(19, 'White Season Resort', 'Houston', 8, 4),
(20, 'Hotel Occazia', 'Phoenix', 12, 4),
(21, 'Purple Orchid', 'New York', 7, 4),
(22, 'Prestige proga Inn', 'Chicago', 12, 5),
(23, 'The Manhattan', 'Phoenix', 5, 3),
(24, 'Lime Wood', 'San Antonio', 8, 4),
(25, 'Parallel Shine', 'Dallas', 2, 4),
(26, 'The Glory Hotel', 'New York', 3, 4),
(27, 'The Mutiny Hotel', 'Los Angeles', 1, 4),
(28, 'The Huntington Hotel', 'Chicago', 4, 3),
(29, 'Towne Place Suites', 'Houston', 9, 5),
(30, 'Cosmopolitan Hotel', 'Phoenix', 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `room_id` int(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `room_hotel` int(255) NOT NULL,
  `room_guest` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`room_id`, `room_name`, `room_hotel`, `room_guest`) VALUES
(1, 'Spring', 1, 2),
(2, 'Summer', 1, 4),
(3, 'Autumn', 1, 2),
(4, 'Winter', 1, 5),
(5, 'Cozy Room A', 2, 1),
(6, 'Cozy Room B', 2, 1),
(7, 'Cozy Room C', 2, 1),
(8, 'Wonderful Room A', 2, 2),
(9, 'Wonderful Room B', 2, 2),
(10, 'Wonderful Sky Room', 2, 4),
(11, 'Studio Suite A', 3, 3),
(12, 'Studio Suite B', 3, 3),
(13, 'Fabulous Room A', 3, 2),
(14, 'Basic Twin A', 4, 2),
(15, 'Basic Twin B', 4, 2),
(16, 'Unrestricted Twin A', 5, 4),
(17, 'Unrestricted Twin B', 5, 4),
(18, 'Imagine King', 6, 6),
(19, 'Plush Twin A', 7, 2),
(20, 'Plush Twin B', 7, 2),
(21, 'Twisted Twin A', 8, 2),
(22, 'Twisted Twin B', 8, 2),
(23, 'Room A', 9, 2),
(24, 'Room B', 9, 4),
(25, 'Room C', 9, 3),
(26, 'Room A', 10, 2),
(27, 'Room B', 10, 3),
(28, 'Room C', 10, 4),
(29, 'Room A', 11, 1),
(30, 'Room B', 11, 2),
(31, 'Room C', 11, 3),
(32, 'Room A', 12, 3),
(33, 'Room B', 12, 4),
(34, 'Room A', 13, 1),
(35, 'Room B', 13, 4),
(36, 'Room A', 14, 5),
(37, 'Room B', 14, 6),
(38, 'Room A', 15, 8),
(39, 'Room B', 15, 10),
(40, 'Room A', 16, 2),
(41, 'Room B', 16, 4),
(42, 'Room A', 17, 2),
(43, 'Room B', 17, 6),
(44, 'Room C', 18, 2),
(45, 'Room D', 18, 2),
(46, 'Room A', 19, 2),
(47, 'Room C', 19, 5),
(48, 'Room B', 20, 4),
(49, 'Room D', 20, 4),
(50, 'Room A', 21, 2),
(51, 'Room B', 21, 2),
(52, 'Room C', 22, 4),
(53, 'Room A', 22, 2),
(54, 'Room A', 23, 8),
(55, 'Room B', 23, 6),
(56, 'Room A', 24, 1),
(57, 'Room B', 24, 1),
(58, 'Room C', 24, 2),
(59, 'Room A', 25, 2),
(60, 'Room B', 25, 2),
(61, 'Room A', 26, 3),
(62, 'Room B', 26, 3),
(63, 'Room C', 27, 1),
(64, 'Room D', 27, 2),
(65, 'Room E', 27, 4),
(66, 'Room A', 28, 2),
(67, 'Room B', 28, 2),
(68, 'Room A', 29, 1),
(69, 'Room B', 29, 1),
(70, 'Room C', 29, 2),
(71, 'Room A', 30, 2),
(72, 'Room B', 30, 2);

-- --------------------------------------------------------

--
-- Table structure for table `shuttle`
--

CREATE TABLE `shuttle` (
  `id` int(255) NOT NULL,
  `bus_brand` int(11) NOT NULL,
  `bus_price` int(11) NOT NULL,
  `bus_score` double NOT NULL,
  `airport` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shuttle`
--

INSERT INTO `shuttle` (`id`, `bus_brand`, `bus_price`, `bus_score`, `airport`) VALUES
(1, 1, 30, 5, 'JFK'),
(2, 2, 25, 4.9, 'JFK'),
(3, 3, 26, 4.8, 'LAX'),
(4, 4, 25, 4.6, 'LAX'),
(5, 5, 28, 4.9, 'ORD'),
(6, 6, 24, 4.5, 'ORD'),
(7, 7, 50, 5, 'IAH'),
(8, 8, 20, 4.8, 'IAH'),
(9, 9, 30, 4.6, 'PHX'),
(10, 10, 28, 4.5, 'PHX');

-- --------------------------------------------------------

--
-- Table structure for table `shuttle_brand`
--

CREATE TABLE `shuttle_brand` (
  `shuttlebrand_id` int(255) NOT NULL,
  `shuttlebrand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shuttle_brand`
--

INSERT INTO `shuttle_brand` (`shuttlebrand_id`, `shuttlebrand_name`) VALUES
(1, 'USA Shuttle Service'),
(2, 'Great Express'),
(3, 'Around the Clock USA'),
(4, 'Boston Airport Shuttle'),
(5, 'Groome Transportation'),
(6, 'FlyAway – Hollywood'),
(7, 'Wisconsin Coach Lines'),
(8, 'First Transit Inc'),
(9, 'Bryce Canyon Shuttle'),
(10, 'Megabus Orlando');

-- --------------------------------------------------------

--
-- Table structure for table `tourguide`
--

CREATE TABLE `tourguide` (
  `id` int(255) NOT NULL,
  `tourguide_brand` int(255) NOT NULL,
  `tourguide_price` int(11) NOT NULL,
  `tourguide_guests` int(255) NOT NULL,
  `tourguide_location` varchar(255) NOT NULL,
  `tourguide_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourguide`
--

INSERT INTO `tourguide` (`id`, `tourguide_brand`, `tourguide_price`, `tourguide_guests`, `tourguide_location`, `tourguide_days`) VALUES
(1, 1, 500, 5, 'New York', 5),
(2, 1, 600, 8, 'New York', 10),
(3, 2, 400, 2, 'Los Angeles', 10),
(4, 2, 100, 2, 'Los Angeles', 3),
(5, 3, 1000, 6, 'Chicago', 12),
(6, 3, 250, 4, 'Chicago', 3),
(7, 4, 1200, 15, 'Houston', 10),
(8, 4, 1500, 20, 'Houston', 12),
(9, 5, 80, 1, 'Phoenix', 3),
(10, 5, 150, 3, 'Phoenix', 5),
(11, 6, 600, 6, 'Phoenix', 10),
(12, 6, 700, 5, 'Phoenix', 16),
(13, 7, 110, 3, 'Houston', 8),
(14, 7, 120, 5, 'Houston', 6),
(15, 8, 130, 5, 'Chicago', 8),
(16, 8, 100, 3, 'Chicago', 2),
(17, 9, 90, 2, 'Los Angeles', 4),
(18, 9, 100, 5, 'Los Angeles', 5),
(19, 10, 120, 3, 'New York', 5),
(20, 10, 70, 2, 'New York', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tourguide_brand`
--

CREATE TABLE `tourguide_brand` (
  `tourguidebrand_id` int(255) NOT NULL,
  `tourguidebrand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourguide_brand`
--

INSERT INTO `tourguide_brand` (`tourguidebrand_id`, `tourguidebrand_name`) VALUES
(1, 'Ridgeberry'),
(2, 'StarMotion'),
(3, 'ClaraMonte'),
(4, 'Bling Coasta'),
(5, 'Palm Arms'),
(6, 'Tropical Coast'),
(7, 'GoodWish'),
(8, 'NorthSmith'),
(9, 'TravelCube'),
(10, 'BlueSpiritan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_form`
--
ALTER TABLE `book_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flght_id`),
  ADD KEY `flight_brand` (`flight_brand`);

--
-- Indexes for table `flight_brand`
--
ALTER TABLE `flight_brand`
  ADD PRIMARY KEY (`flightbrand_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`),
  ADD KEY `brand` (`brand`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_hotel` (`room_hotel`);

--
-- Indexes for table `shuttle`
--
ALTER TABLE `shuttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_brand` (`bus_brand`);

--
-- Indexes for table `shuttle_brand`
--
ALTER TABLE `shuttle_brand`
  ADD PRIMARY KEY (`shuttlebrand_id`);

--
-- Indexes for table `tourguide`
--
ALTER TABLE `tourguide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourguide_brand` (`tourguide_brand`);

--
-- Indexes for table `tourguide_brand`
--
ALTER TABLE `tourguide_brand`
  ADD PRIMARY KEY (`tourguidebrand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_form`
--
ALTER TABLE `book_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flght_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `flight_brand`
--
ALTER TABLE `flight_brand`
  MODIFY `flightbrand_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `hotel_room`
--
ALTER TABLE `hotel_room`
  MODIFY `room_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `shuttle`
--
ALTER TABLE `shuttle`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shuttle_brand`
--
ALTER TABLE `shuttle_brand`
  MODIFY `shuttlebrand_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tourguide`
--
ALTER TABLE `tourguide`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tourguide_brand`
--
ALTER TABLE `tourguide_brand`
  MODIFY `tourguidebrand_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`flight_brand`) REFERENCES `flight_brand` (`flightbrand_id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`brand`) REFERENCES `brand` (`brand_id`);

--
-- Constraints for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `hotel_room_ibfk_1` FOREIGN KEY (`room_hotel`) REFERENCES `hotel` (`hotel_id`);

--
-- Constraints for table `shuttle`
--
ALTER TABLE `shuttle`
  ADD CONSTRAINT `shuttle_ibfk_1` FOREIGN KEY (`bus_brand`) REFERENCES `shuttle_brand` (`shuttlebrand_id`);

--
-- Constraints for table `tourguide`
--
ALTER TABLE `tourguide`
  ADD CONSTRAINT `tourguide_ibfk_1` FOREIGN KEY (`tourguide_brand`) REFERENCES `tourguide_brand` (`tourguidebrand_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
